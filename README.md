# **Yolk A Day**

Yolk A Day is a food tracker application designed for young individuals, developed using Flutter.

## Getting Started

This project serves as a foundation for a Flutter application. If you are new to Flutter, the following resources will help you kickstart your development:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For comprehensive guidance on Flutter development, refer to the [online documentation](https://docs.flutter.dev/). It includes tutorials, samples, and a complete API reference.

## Repository

Find the project on GitHub: [Yolk-A-Day Repository](https://github.com/friskaam/Yolk-A-Day)

Feel free to explore the codebase, contribute, or raise issues.

## How to Contribute

### Clone the Repository:

1. **Fork the Repository:**
   - Visit the Yolk A Day repository on GitHub: [Yolk-A-Day Repository](https://github.com/friskaam/Yolk-A-Day)
   - Click the "Fork" button in the top right corner of the repository page.
   - This will create a copy (fork) of the repository in your GitHub account.

2. **Clone the Forked Repository Locally:**
   - Open a terminal or command prompt on your computer.
   - Navigate to the directory where you want to clone the repository.
   - Clone your forked repository:

     ```bash
     git clone https://github.com/[your-username]/Yolk-A-Day.git
     ```
     
   - Replace `your-username` with your GitHub username.

3. **Set Up Upstream Remote:**
   - Navigate into the cloned repository:

     ```bash
     cd Yolk-A-Day
     ```

   - Set up an upstream remote to the original repository:

     ```bash
     git remote add upstream https://github.com/friskaam/Yolk-A-Day.git
     ```

### Contribute to the Project:

1. **Create a New Branch:**
   - Create a new branch for your contributions. Use a branch name that reflects the feature or bug fix you're working on:

     ```bash
     git checkout -b [feature-name]
     ```

2. **Make Changes:**
   - Make the necessary changes to the code using your preferred code editor.

3. **Commit Changes:**
   - Stage the changes:

     ```bash
     git add .
     ```

   - Commit the changes with a descriptive commit message:

     ```bash
     git commit -m "[commit message]"
     ```

4. **Fetch Upstream Changes:**
   - Fetch any changes made to the original repository:

     ```bash
     git fetch upstream
     ```

5. **Rebase Your Branch:**
   - If there are upstream changes, rebase your branch to incorporate them:

     ```bash
     git rebase upstream/main
     ```

   - Resolve any conflicts if they occur during the rebase.

6. **Push Changes to Your Fork:**
   - Push your changes to your fork on GitHub:

     ```bash
     git push origin [feature-name]
     ```

7. **Create a Pull Request:**
   - Visit your forked repository on GitHub.
   - Switch to the branch you created (`feature-name`).
   - Click the "New Pull Request" button.
   - Provide a descriptive title and details for your pull request.
   - Submit the pull request.

### Syncing Fork
If there are new changes in the original repository and you want to sync your fork:

```bash
# Fetch upstream changes
git fetch upstream
