# Week Four: * Saved Me * 

## Lesson
  - Using Docker for coding
    - Moved Coding source to Public Directory
    - Accessing the Database
  - Branching
    - Forking Opensource software contributes
    - Project Branching [Git Flow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
      - Master - usually the stable version of the software and base of the code source where all branches are merged
      - Release - Multiple tags and version that is actually in production can be varied from the master, and actually vesions of the master branch tags.
      - Develop - least stable always merged with the newest features, and often used for testing.
      - Features - planned development pieces that build out the platform 
      - Hotfixes - is generally a patch or update for clients / deployed systems but more specifically they are patches which are:
        * not released to a schedule.
        * intended to address either 'niche' situations or 'emergency' responses.
        * only relevant to the specific issue documented in the release notes.
        * poorly tested. If at all.
        * a potential source for the (re)introduction of bugs.
        * intended for small audiences.
        * likely to affect automated patching systems and require additional monitoring. Hotfixes may deploy a file/library with unusually high version number to prevent the hotfix from being patched over.
        * supplied by the software maker directly to named contacts, not publically available. Customers are often expected to contact technical support to request hotfixes for example.
        * frequently branched from the 'last known good' source tree. As a 'quick fix' the code used in the hotfix may never make it back into the main build (it may be that as a temporary fix a better solution requires more time/resources.)
      - bugfix - is an action on the source code, it is a code change or set of changes to address a reported code defect (a bug.)
  - Moving Planning Tickets
    - Migel and code review
    - Merging code
    - CI/Jenkins
    - Deployed vs Done
  - Half way point evaluation
  - Feedback