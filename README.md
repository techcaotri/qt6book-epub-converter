<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<br />
<div align="center">
  <h3 align="center">qt6book-epub-converter</h3>

  <p align="center">
    Convert Qt 6 Book to epub format. 
    <br />
  </p>
</div>

## About The Project
As a developer, I've always enjoyed diving into Qt 6. The Qt 6 book itself is a remarkable resource. It's filled with many deep, practical knowledgees of the authors. It also has many companion examples for the readers to play with. Unfornately, the original publishing only support PDF format, it lacks of the mobile and e-reader friendly support.
So I decided to create a simple converter to make it being available in EPUB format. I hope this tool will enhance your learning journey as much as it has mine.

### Built With

This converter makes use of the following frameworks/libraries and technologies.

* [![Pandoc][Pandoc]][Pandoc-url]
* [![Markdown][Markdown]][Markdown-url]
* [![Python][Python]][Python-url]

## Getting Started
### Prerequisites
The converter uses Pandoc and the following plugins to publish to EPUB format:
<a name="pandoc-plugins"></a>
  + [pandoc-codeblock-include](https://pypi.org/project/pandoc-codeblock-include/) 
  + [mermaid-filter](): your might need to install the following packages: 
  	+ https://www.npmjs.com/package/mermaid-filter
  	+ https://www.npmjs.com/package/@mermaid-js/mermaid-cli
  + [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref) 

### Usage
Just run the script:
```bash
$ ./download_and_convert_qt6book.sh
```

### How the script operate:
The script functions with the following sequence of steps:
1. Clone the Qt 6 book repository from GitHub using the command `git clone https://github.com/qmlbook/qt6book.`
2. Copy the contents of the book into the 'epub_converter' working directory.
3. Transform the book's markdown files into a format that is compatible with **Pandoc** using the `qt6book_converter` program which specifically designed for this book. As it stands, the source code for `qt6book_converter` program isn't openly available. However, if there's enough interest or request from the community, I might consider making it public in the future.
4. Utilize **Pandoc** to convert the revised markdown files into the EPUB format.

### Contributing:
Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Acknowledgements:
* [The Amazing Qt 6 Book](https://github.com/qmlbook/qt6book)
* [The productive template that I used for publishing this EPUB](https://github.com/hieplpvip/pandoc-markdown-book)
* [Pandoc and its awesome plugins](#pandoc-plugins)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/techcaotri/qt6book-epub-converter.svg?style=for-the-badge
[contributors-url]: https://github.com/techcaotri/qt6book-epub-converter/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/techcaotri/qt6book-epub-converter?style=for-the-badge
[forks-url]: https://github.com/techcaotri/qt6book-epub-converter/network/members
[stars-shield]: https://img.shields.io/github/stars/techcaotri/qt6book-epub-converter?style=for-the-badge
[stars-url]: https://github.com/techcaotri/qt6book-epub-converter/stargazers
[issues-shield]: https://img.shields.io/github/issues/techcaotri/qt6book-epub-converter?style=for-the-badge
[issues-url]: https://github.com/techcaotri/qt6book-epub-converter/issues
[license-shield]: https://img.shields.io/github/license/techcaotri/qt6book-epub-converter?style=for-the-badge
[license-url]: https://github.com/techcaotri/qt6book-epub-converter/blob/master/LICENSE.md

[Pandoc]: https://img.shields.io/badge/pandoc-000000.svg?&style=for-the-badge&logo=pandoc&logoColor=white
[Pandoc-url]: https://nextjs.org/
[Markdown]: https://img.shields.io/badge/markdown-000000.svg?&style=for-the-badge&logo=markdown&logoColor=white
[Markdown-url]: https://reactjs.org/
[Python]: https://img.shields.io/badge/python-3.6%2B-orange?style=for-the-badge&logo=python
[Python-url]: https://www.python.org/