<h1 align="center">Dependency Cleaner</h1> <div align="center">

A shell script to easily delete dependency folders in a given directory and its subdirectories. A great tool to free up disk space by removing unnecessary node_modules, .cache, pycache, target, venv, env, go/pkg folders.

[![Stars](https://img.shields.io/github/stars/olegkron/dependency-cleaner.svg?style=social)](https://github.com/olegkron/dependency-cleaner/stargazers) [![Forks](https://img.shields.io/github/forks/olegkron/dependency-cleaner.svg?style=social)](https://github.com/olegkron/dependency-cleaner/network/members) [![Contributors](https://img.shields.io/github/contributors/olegkron/dependency-cleaner.svg)](https://github.com/olegkron/dependency-cleaner/graphs/contributors) [![Issues](https://img.shields.io/github/issues/olegkron/dependency-cleaner.svg)](https://github.com/olegkron/dependency-cleaner/issues) [![MIT License](https://img.shields.io/github/license/olegkron/dependency-cleaner.svg)](https://github.com/olegkron/dependency-cleaner/blob/main/LICENSE)

</div>

![Output example](https://raw.githubusercontent.com/olegkron/node_modules_remover/main/output_example.png)

## 🎉 Features

-   🔎 Recursively searches for the following folders in the input directory: "node_modules", ".cache", "pycache". "target", "venv". "env", "go/pkg" (any of them can be added or removed)
-   📊 Displays the total size of each folder
-   💽 Calculates the total space saved
-   🖥️ Works on Linux and MacOS

## 💻 Usage

The script can be executed using the following command in the terminal:

`./dependency-cleaner.sh [directory_path] [max_depth]`

-   `directory_path`: Required. The directory to search for node_modules folders.
-   `max_depth`: Optional. Sets maximum depth to search for node_modules folders. Default is 3.

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=olegkron/dependency-cleaner&type=Date)](https://star-history.com/#olegkron/dependency-cleaner&Date)

## 🙌 Contributing

If you have any suggestions for improvements or find any bugs, feel free to open a pull request or an issue.

## 👥 Authors

-   **Oleg Kron** - [olegkron](https://github.com/olegkron)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/olegkron/node_modules_remover/blob/main/LICENSE) file for details.
