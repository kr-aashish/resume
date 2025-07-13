# Resume

An automated LaTeX resume builder with GitHub Actions pipeline that compiles, publishes, and distributes your resume across multiple platforms.

## Features

- **LaTeX Resume Compilation**: Professional resume built with LaTeX for consistent formatting
- **Automated Pipeline**: GitHub Actions workflow that builds and deploys on every push
- **Multi-Platform Distribution**:
  - **PDF Generation**: Automatic PDF compilation and versioning
  - **GitHub Pages**: Live web viewer at your GitHub Pages URL
- **Clean PDF Viewer**: Minimal, Google Drive-style PDF viewer optimized for all devices
- **Docker-based Build**: Consistent LaTeX compilation environment using Docker
- **Version Control**: Automatic PDF commits with version tracking

## Project Structure

```
resume/
├── .github/workflows/
│   └── build-and-publish.yml    # Main CI/CD workflow
├── public/
│   └── index.html               # PDF viewer web interface
├── dist/                        # Generated PDF files
├── aashish_kumar.tex           # Main LaTeX resume file
├── Dockerfile                   # LaTeX compilation environment
```

## Quick Start

### Prerequisites

- Git repository with GitHub Actions enabled
- LaTeX source file (`.tex`)
- Docker (for local builds)

### Local Development

1. **Clone the repository**:
   ```bash
   git clone <your-repo-url>
   cd resume
   ```

2. **Edit your resume**:
   - Modify `aashish_kumar.tex` with your information
   - Use standard LaTeX resume formatting

3. **Commit and push**:
   ```bash
   git add .
   git commit -m "Update resume"
   git push origin main
   ```

## Automation Pipeline

The GitHub Actions workflow automatically:

1. **Builds** your LaTeX resume using Docker
2. **Commits** the generated PDF back to the repository
3. **Deploys** to GitHub Pages for web viewing

### Workflow Jobs

- **Build Job**: Compiles LaTeX → PDF using Docker
- **Commit Job**: Commits PDF to `dist/` folder (main branch only)
- **Deploy Job**: Publishes to GitHub Pages (main branch only)

## Setup Instructions

### 1. GitHub Pages Setup

1. Go to your repository **Settings** → **Pages**
2. Set source to **GitHub Actions**
3. Your resume will be available at: `https://<username>.github.io/<repository-name>/`

### 2. Customize Your Resume

1. **Edit LaTeX file**: Modify `aashish_kumar.tex` with your details
2. **Update filename**: Rename the `.tex` file to match your name
3. **Update workflow**: If you renamed the file, update the filename in `.github/workflows/build-and-publish.yml`

## PDF Viewer Features

The web viewer provides a clean, distraction-free viewing experience:

- **Continuous scroll**: All pages displayed vertically
- **Auto-fit width**: Optimal scaling for any screen size
- **Mobile optimized**: Touch-friendly scrolling
- **Google Drive style**: Clean design with subtle shadows
- **No controls**: Minimal interface focused on content

## Docker Build Environment

The project uses a custom Docker environment for LaTeX compilation:

- **Base**: `texlive/texlive:latest`
- **Clean output**: All build artifacts go to `dist/` folder
- **Isolated builds**: No contamination of source directory

## File Naming Convention

- **Repository PDFs**: `aashish_kumar.pdf` (matches .tex filename)

## Troubleshooting

### Common Issues

1. **LaTeX compilation errors**: Check the Actions log for detailed error messages
2. **PDF not updating**: Ensure the workflow has write permissions to the repository
3. **Pages not deploying**: Check that GitHub Pages is configured correctly

### Debug Steps

1. Check **Actions** tab for workflow execution logs
2. Verify file permissions and repository settings
3. Test LaTeX compilation locally using Docker

## Customization

### Modifying the Workflow

Edit `.github/workflows/build-and-publish.yml` to:
- Change build triggers
- Modify artifact retention
- Adjust job dependencies
- Add new deployment targets

### Styling the Viewer

Modify `public/index.html` to:
- Change PDF viewer appearance
- Add custom branding
- Implement additional features

## License

This project structure is available under the MIT License. Update the LaTeX template according to its original license.

---

**Live Resume**: [View on GitHub Pages](https://kr-aashish.github.io/resume/)
