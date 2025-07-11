# CPU Monitor Alert using Gmail SMTP (`mutt`)

This project allows sending email alerts using `mutt` with Gmail SMTP, supporting file attachments.

## 🧰 Files

- `.muttrc`: Gmail SMTP config
- `sendmail.sh`: Script to send mail
- `example.txt`: Sample attachment

## ⚙️ Requirements

- Gmail account with App Password
- `mutt` installed on your system

## 🚀 Usage

```bash
./sendmail.sh "Hello" "Test Subject" someone@gmail.com

