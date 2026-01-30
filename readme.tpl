# 📖 Free and OpenSource Book Libraries

There are many great free and open-source alternatives to closed source and/or paid book libraries. 
This project aims to track and compare the feature set between the many different options with a focus on 'Gratis' (free as in free beer) open source photo libraries. 
'Libre' (free as in free speech) projects are also welcome, but will likely need to be submitted via a pull request since the time in testing each different project is significant.

> [!WARNING]
> This repository displays both objective and subjective measures of feature quality.

## Comparison

```text
⭐ = Full support (10/10 score)
✅ = Feature exists in at least a limited fashion
🚧 = Feature may exist but may not be practical or officially released
💰 = paid feature (even if partial or optional)
❔ = Unknown information (help needed!)
❌ = Feature does not yet exist
💀 = Not planned (no PRs accepted / unlikely to be implemented)
#️⃣ = Subjective measure of feature quality (on scale of 0-10)
```

> [!TIP]
> Hover over emoji for additional information (🔗 link to related issue, 🔑 demo credentials, etc)

{{COMPARISON_TABLE}}

> [!NOTE]
> This list is not exhaustive and is provided on a best-effort basis.
> No guarantees are made about its accuracy or completeness.
> If you find an error or omission, please report it and submit a fix when possible.

> Source: Start history in January of 2026 [star-history.com](https://star-history.com)

## Notes on specific projects

- Calibre unlikely to be implemented fuzzy search: [Bug #2139316](https://bugs.launchpad.net/calibre/+bug/2139316)
- Booklore Full Text Search is not planned: [Issue 1793](https://github.com/booklore-app/booklore/issues/1793#issuecomment-3700847691)
- Komga iOS App is a third party app called Komic with paid features.

## Score Methodology; or how to got ⭐

- Freeness: Only if all features are free without payment or subscription.
- Demo: Only if provide a public demo with no registration required.
- OPDS: Only if support OPDS [stable v1.2](https://specs.opds.io/opds-1.2) and [draft v2](https://drafts.opds.io/opds-2.0).
- Search: Only if support search by title, author, description and tags.
- Full Text Search: Only if support [full text search](https://en.wikipedia.org/wiki/Full-text_search) and 
[fuzzy search](https://en.wikipedia.org/wiki/Approximate_string_matching).
- Docker installation: Only if have an official docker image and is provided in docker hub and ghcr.io for the stable release.
- Duplicate Handling: Only if support duplicate detection and merging.
- Android/iOS/Desktop/Web App: Only if have an official app with support to reading without leaving the app.

> [!IMPORTANT]
> To help reduce [bias](https://en.wikipedia.org/wiki/Bias), subjective scores are only assigned after the scoring methodology for that row has been defined.

### Books certification level 1 test 💎

A simple way to reward apps that focus on the most fundamental user experience: 
reading smoothly, resuming where you left off, and finding content quickly, all within the same app.

All need to happen in same app and be free of charge:

- Be able to open an ebook navegate to any page, close, open again and return to the same page.
- Be able to open a comic cbz in streaming fashion.
- Be able to highlight text inside an ebook and keep synced at user level.
- Be able to search inside an open ebook and pdf.
- Be able to search for a word in all ebooks and pdfs in the library.

### Books certification level 2 test 💎💎

TBA when one application passes level 1.

## References and links

- [Awesome Self-Hosted](https://github.com/awesome-selfhosted/awesome-selfhosted#document-management---e-books)
- [HTML version of this comparison](https://webysther.github.io/foss_book_libraries/)
- [FOSS Photo Libraries Comparison](https://github.com/meichthys/foss_photo_libraries)

## Star History

> [!CAUTION]
> Please review the data carefully. [GitHub stars and other popularity signals can be manipulated](https://www.wired.com/story/github-stars-black-market-coders-cheat/), so treat rankings and perceived traction as potentially unreliable and prioritize verifiable features and documentation.

<img src="https://raw.githubusercontent.com/webysther/foss_book_libraries/refs/heads/main/assets/stars/20260130.png" alt="Star History January of 2026"/>

## Contributing

Contributions are welcome. Please see [CONTRIBUTE.md](CONTRIBUTE.md) for details.

## Support

Maintaining this list takes time. If you found this comparison useful, consider supporting via [GitHub Sponsors](https://github.com/sponsors/webysther)
