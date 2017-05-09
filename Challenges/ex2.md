# Domain Model

System of objects and messages based on the following User Stories.

## User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

**Write down all the nouns and verbs.**

Objects  | Messages
------------- | -------------
Person  |
Bike | is_working?
Docking Station  | release_bike

#### Diagram showing how Objects use messages
Person asks bike if is_working? and Bike gives back status of bike (good / bad).
Bike asks release_bike from Docking Station and DS releases bike.
