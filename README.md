Alex's (Mostly) English-Language Recruiter Domain List.

A great big dirty mailfilter to handle the recruiter spam / feed a jobs mailbox.

Domains collected from various sources including my own filters.

I don't consider these people spammers. Sometimes when you don't have a job you'd like to hear from them!!

You can use domains.txt raw elsewhere in your own way.

You can see how I build up a little maildrop filter with it via the other files.

are created based on a few simple tld/word inputs and also covers the two recruitment GTLDS.

How to use (my process for my dovecot maildrop setup):

Put new recruitment email domains into newdomains.txt - any that slip past...

Put new wildcards combinations into wildcards.sh

Run the makefilter.sh and it adds them to the list and generates an updated jobs.mailfilter.

Copy the jobs.mailfilter to your mail server for inclusion.

See include-example.mailfilter for how to integrate this with your maildrop mailfilter config.

Please contact me if you have any suggestions or want a better filter for your x/y/z.

Any suggestions for improvement are fine but working / readable / sensible patches are golden.
