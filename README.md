
<h1 align="center">node_modules Remover 🗑️</h1> <div align="center">

[![Stars](https://img.shields.io/github/stars/olegkron/node_modules_remover.svg?style=social)](https://github.com/olegkron/node_modules_remover/stargazers) [![Forks](https://img.shields.io/github/forks/olegkron/node_modules_remover.svg?style=social)](https://github.com/olegkron/node_modules_remover/network/members) [![Contributors](https://img.shields.io/github/contributors/olegkron/node_modules_remover.svg)](https://github.com/olegkron/node_modules_remover/graphs/contributors) [![Issues](https://img.shields.io/github/issues/olegkron/node_modules_remover.svg)](https://github.com/olegkron/node_modules_remover/issues) [![MIT License](https://img.shields.io/github/license/olegkron/node_modules_remover.svg)](https://github.com/olegkron/node_modules_remover/blob/main/LICENSE)

</div>

A shell tool for recursive search & removal of old/unused `node_modules` folders in a given directory and its subdirectories.

![Output example](https://raw.githubusercontent.com/olegkron/node_modules_remover/main/output_example.png)


## 🎉 Features

- ✔️ Checks if the input directory exists
- 🔎 Searches for `node_modules` folders in the input directory recursively to the specified maximum depth
- 📊 Displays the total size of each `node_modules` folder
- ✅ Allows the user to select which folders to delete
- 💽 Calculates the total space saved
- 🖥️ Works on Linux and MacOS

## 💻 Usage

The script can be executed using the following command in the terminal:

`./node_modules_remover.sh [directory_path] [max_depth]`

- `directory_path`: Required. The directory to search for node_modules folders.
- `max_depth`: Optional. Sets maximum depth to search for node_modules folders. Default is 3.

## Output Example

```
./node_modules_remover.sh ~/projects

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

- **Oleg Kron** - [olegkron](https://github.com/olegkron)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/olegkron/node_modules_remover/blob/main/LICENSE) file for details.
