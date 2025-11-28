# Architecture & Data Layer

## The Bitmap Strategy

The core architecture of this app is built around "The Bitmap Strategy". This approach simplifies document handling by converting all imported documents (PDFs, Images) into static PNG images.

-   **Import**: When a user imports a file, it is processed page by page.
-   **Render**: Each page is rendered as a high-quality PNG image.
-   **Store**: These images are stored locally in the app's document directory.
-   **Annotate**: Users view these images as backgrounds and overlay text annotations on top.

## File System Structure (The Bundle Pattern)

Data is stored in the `AppDocumentsDirectory` using a bundle pattern. Each worksheet has its own directory containing all related assets.

```text
worksheets/
 └── {uuid_of_worksheet}/
      ├── original_source.pdf   (Backup of the original file)
      ├── page_0.png            (Rendered background for Page 1)
      ├── page_1.png            (Rendered background for Page 2)
      └── audio/
           └── {uuid_audio}.wav (Raw STT audio files)
```

## Data Layer (Drift & Riverpod)

The app uses **Drift** (SQLite) for local persistence and **Riverpod** for state management and dependency injection.

### Database Schema

#### Table: `Worksheets`
| Column | Type | Description |
| :--- | :--- | :--- |
| `id` | String (UUID) | Primary Key. Unique identifier for the worksheet. |
| `title` | String | Title of the worksheet. |
| `created_at` | DateTime | Timestamp of creation. |
| `status` | String | Status of the worksheet (e.g., 'draft'). |

#### Table: `WorksheetPages`
| Column | Type | Description |
| :--- | :--- | :--- |
| `id` | Int (Auto Inc) | Primary Key. |
| `worksheet_id` | String | Foreign Key linking to `Worksheets`. |
| `page_index` | Int | The order of the page in the worksheet. |
| `image_path` | String | Absolute path to the local PNG background image. |
| `width` | Int | Width of the background image. |
| `height` | Int | Height of the background image. |

#### Table: `Annotations`
| Column | Type | Description |
| :--- | :--- | :--- |
| `id` | Int (Auto Inc) | Primary Key. |
| `page_id` | Int | Foreign Key linking to `WorksheetPages`. |
| `x_percent` | Real | X coordinate as a percentage (0.0 - 1.0). |
| `y_percent` | Real | Y coordinate as a percentage (0.0 - 1.0). |
| `width_percent` | Real | Width as a percentage (0.0 - 1.0). |
| `height_percent`| Real | Height as a percentage (0.0 - 1.0). |
| `text_content` | String | The text content of the annotation. |
| `audio_path` | String | Path to the associated audio file. |

### Repository Pattern

The `WorksheetRepository` abstracts the data access logic. It handles:
-   Creating new worksheets and setting up the directory structure.
-   Adding pages to worksheets and copying images to the correct location.
-   Interacting with the Drift database to store metadata.

It is provided via Riverpod:
```dart
@riverpod
WorksheetRepository worksheetRepository(WorksheetRepositoryRef ref) {
  return WorksheetRepository(ref.watch(appDatabaseProvider));
}
```
