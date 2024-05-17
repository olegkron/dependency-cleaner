<h1 align="center">Dependency Cleaner 🗑️</h1> <div align="center">

[![Stars](https://img.shields.io/github/stars/olegkron/dependency-cleaner.svg?style=social)](https://github.com/olegkron/dependency-cleaner/stargazers) [![Forks](https://img.shields.io/github/forks/olegkron/dependency-cleaner.svg?style=social)](https://github.com/olegkron/dependency-cleaner/network/members) [![Contributors](https://img.shields.io/github/contributors/olegkron/dependency-cleaner.svg)](https://github.com/olegkron/dependency-cleaner/graphs/contributors) [![Issues](https://img.shields.io/github/issues/olegkron/dependency-cleaner.svg)](https://github.com/olegkron/dependency-cleaner/issues) [![MIT License](https://img.shields.io/github/license/olegkron/dependency-cleaner.svg)](https://github.com/olegkron/dependency-cleaner/blob/main/LICENSE)

</div>

A shell script to easily delete dependency folders in a given directory and its subdirectories. A great tool to free up disk space by removing unnecessary node_modules, .cache, **pycache**, target, venv, env, go/pkg folders.

![Output example](https://raw.githubusercontent.com/olegkron/node_modules_remover/main/output_example.png)

## 🎉 Features

-   🔎 Recursively searches for the following folders in the input directory: "node_modules", ".cache", "**pycache**". "target", "venv". "env", "go/pkg" (any of them can be added or removed)

-   📊 Displays the total size of each folder
-   💽 Calculates the total space saved
-   🖥️ Works on Linux and MacOS

## 💻 Usage

The script can be executed using the following command in the terminal:

`./dependency-cleaner.sh [directory_path] [max_depth]`

-   `directory_path`: Required. The directory to search for node_modules folders.
-   `max_depth`: Optional. Sets maximum depth to search for node_modules folders. Default is 3.

## Output Example

```
./dependency-cleaner.sh ~/projects

Searching for node_modules folders in /Users/johndoe/projects... (max depth: 3)
Found 5 node_modules of total size 1.3G in the following folders:
[0] project1 - 200M
[1] project2 - 300M
[2] project3 - 200M
[3] project4 - 400M
[4] project5 - 200M

Enter the index number(s) of the node_modules folder(s) to delete (separated by a space).
To delete all, press enter. To quit, type 'q':
0 1 2 4
Removing node_modules folder for project1 (200M) ...
Removing node_modules folder for project2 (300M) ...
Removing node_modules folder for project3 (200M) ...
Removing node_modules folder for project5 (200M) ...
Done, Total space saved: 1.1G

```

## 🙌 Contributing

If you have any suggestions for improvements or find any bugs, feel free to open a pull request or an issue.

## 👥 Authors

-   **Oleg Kron** - [olegkron](https://github.com/olegkron)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/olegkron/node_modules_remover/blob/main/LICENSE) file for details.
