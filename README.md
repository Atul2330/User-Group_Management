# Linux User & Group Management Toolkit

A Bash-based Linux administration toolkit designed to automate user and group management tasks. This project provides interactive menu-driven scripts for managing Linux users, groups, passwords, and permissions directly from the terminal.

The toolkit simplifies common administrative operations such as creating users, assigning passwords, managing groups, adding users to groups, retrieving user details, and deleting accounts.

---

# Features

## User Management
- Create Linux users
- Assign or update user passwords
- Check user UID
- Display user details
- Delete users
- Add users to groups

## Group Management
- Create groups
- Rename groups
- Display group details
- Delete groups

---

# Technologies Used

- Bash Scripting
- Linux User Management Utilities
- systemd-based Linux Systems
- Linux Terminal Commands

---

# Project Structure

```text
linux-user-group-management/
│
├── user_management.sh
├── group_management.sh
└── README.md
```

---

# Requirements

- Linux Operating System
- Bash Shell
- sudo privileges

---

# How to Run

Clone the repository:

```bash
git clone https://github.com/Atul2330/User-Group_Management.git
```

Move into the project directory:

```bash
cd User-Group_Management
```

Give executable permissions to the scripts:

```bash
chmod +x userManagement.sh
chmod +x group_management.sh
```

Run the User Management script:

```bash
./userManagement.sh
```

Run the Group Management script:

```bash
./group_management.sh
```

---

# User Management Operations

## Create User
Creates a new Linux user account with a home directory.

## Add User Password
Assigns or updates a password for an existing user.

## Check User UID
Displays the User ID (UID) of a Linux user.

## Show User Detail
Retrieves user account details from the system.

## Add User to Group
Adds an existing user to a Linux group.

## Delete User
Removes a Linux user account and associated files.


---

# Group Management Operations

## Create Group
Creates a new Linux group.

## Change Group Name
Renames an existing Linux group.

## Get Group Detail
Displays group information including Group ID (GID).

## Delete Group
Removes an existing Linux group.

---

# Skills Demonstrated

- Linux Administration
- Bash Scripting
- User & Group Management
- Linux Permissions & Access Control
- Terminal Automation
- Interactive Shell Scripting

---

# Project Goal

The goal of this project is to practice Linux system administration and Bash scripting by automating common user and group management tasks in a structured and reusable way.
