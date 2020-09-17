# Review 17th Sept. 2020:

### Problem space:
ACME to-do applications, the company makes commandline applications.

### Project:
- add & complete to-do tasks

### Examples:
- 2types of strings will be supplied as input
- ("add buy milk")  => "1. buy milk"
- ("done 1")  => removes the to-do list entry and reorders the list according to current entries:
  - if there are other items on the list => return the current to-do list entries excluding the done item e.g. "1. wash car"
  - if there are no other items on the list => return "you don't have any current to-do list entries"
  - if the string formatted wrongly, return friendly message: "please use add or done followed by a to-do"

Assumptions (Useful keywords):
1. 'to do',
2. 'basket'
3. 'add'
4. 'done'
5. 'entry'
6. 'item'

```
INPUT                |                  OUTPUT
===============================================
(done)("")                  |           "please use the add or done keyword, followed by a to-do"
"add buy milk"        |           "1. buy milk"
("done 1")            |           "1. wash car"
"add wash car"        |           "1. buy milk, 2. wash car"
("done 2")            |           "1. buy milk"
("done 1")            |           "you don't have any current to-do list entries"
```