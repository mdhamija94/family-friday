# family-friday

There are two files in this repo: 

1) apartment_list.txt
2) ffv1.rb

Input names of Family Friday participants separated by new lines in apartment_list.txt. You can then run `ruby ffv1.rb` to mix it up and generate groups for Family Friday!

The way this was implemented will behave as follows:
- Participant count of n where n < 3 --> Minimum group size of n
- Participant count of 3 --> Minimum group size of 3
- Participant count of 4 --> Minimum group size of 4
- Participant count of 5 --> A group of 3 and a group of 2
- Participant count of n where n > 5 --> Minimum group size of 3, maximum group size of 4, with as many groups of 4 as possible.
