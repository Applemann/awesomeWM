#!/usr/bin/python

import imaplib
import email

M=imaplib.IMAP4_SSL("imap.seznam.cz", 993)
M.login("martin.jablecnik@email.cz","passwd")

status, counts = M.status("INBOX","(MESSAGES UNSEEN)")

if status == "OK":
	unread = int(counts[0].split()[4][:-1])
else:
	unread = "N/A" 

M=imaplib.IMAP4_SSL("imap.seznam.cz", 993)
M.login("martin.jablecnik@seznam.cz","passwd")

status, counts = M.status("INBOX","(MESSAGES UNSEEN)")

if status == "OK":
	unread += int(counts[0].split()[4][:-1])
else:
	unread += 0 

print(str(unread))
