# A Modern TMDB Swift Package

Use this package to access TMDB's API. [You'll first need to get your own API key](https://developers.themoviedb.org/3/getting-started/introduction).

Note: Currently, this package **only** supports the v4 auth (API Read Access Token).

The initial goals for this package is to support the un-authenticated, read-only APIs.

---

## Endpoints List

Here's a list of the endpoints that have been integrated or completed.

### v3

- [ ] ACCOUNT (Low Priority)
    - [ ] GET Get Details
    - [ ] GET Get Created Lists
    - [ ] GET Get Favorite Movies
    - [ ] GET Get Favorite TV Shows
    - [ ] POST Mark as Favorite
    - [ ] GET Get Rated Movies
    - [ ] GET Get Rated TV Shows
    - [ ] GET Get Rated TV Episodes
    - [ ] GET Get Movie Watchlist
    - [ ] GET Get TV Show Watchlist
    - [ ] POST Add to Watchlist
- [ ] AUTHENTICATION (Low Priority)
    - [ ] GET Create Guest Session
    - [ ] GET Create Request Token
    - [ ] POST Create Session
    - [ ] POST Create Session With Login
    - [ ] POST Create Session (from v4 access token)
    - [ ] DELETE Delete Session
- [ ] CERTIFICATIONS
    - [ ] GET Get Movie Certifications
    - [ ] GET Get TV Certifications
- [ ] CHANGES (Low Priority)
    - [ ] GET Get Movie Change List
    - [ ] GET Get TV Change List
    - [ ] GET Get Person Change List
- [ ] COLLECTIONS
    - [ ] GET Get Details
    - [ ] GET Get Images
    - [ ] GET Get Translations
- [ ] COMPANIES
    - [ ] GET Get Details
    - [ ] GET Get Alternative Names
    - [ ] GET Get Images
- [ ] CONFIGURATION
    - [ ] GET Get API Configuration
    - [ ] GET Get Countries
    - [ ] GET Get Jobs
    - [ ] GET Get Languages
    - [ ] GET Get Primary Translations
    - [ ] GET Get Timezones
- [ ] CREDITS
    - [ ] Get details
- [x] DISCOVER
    - [x] GET Movie Discover
    - [x] GET TV Discover
- [ ] FIND
    - [ ] GET Find by ID
- [ ] GENRES
    - [ ] GET Get Movie List
    - [ ] GET Get TV List
- [ ] GUEST SESSIONS
    - [ ] GET Get Rated Movies
    - [ ] GET Get Rated TV Shows
    - [ ] GET Get Rated TV Episodes
- [ ] KEYWORDS
    - [ ] GET Get Details
    - [ ] GET Get Movies
- [ ] MOVIES
    - [ ] GET Get Details
    - [ ] GET Get Account States
    - [ ] GET Get Alternative Titles
    - [ ] GET Get Changes
    - [ ] GET Get Credits
    - [ ] GET Get External IDs
    - [ ] GET Get Images
    - [ ] GET Get Keywords
    - [ ] GET Get Lists
    - [ ] GET Get Recommendations
    - [ ] GET Get Release Dates
    - [ ] GET Get Reviews
    - [ ] GET Get Similar Movies
    - [ ] GET Get Translations
    - [ ] GET Get Videos
    - [ ] GET Get Watch Providers
    - [ ] POST Rate Movie
    - [ ] DELETE Delete Rating
    - [ ] GET Get Latest
    - [ ] GET Get Now Playing
    - [ ] GET Get Popular
    - [ ] GET Get Top Rated
    - [ ] GET Get Upcoming    
- [ ] NETWORKS
    - [ ] GET Get Details
    - [ ] GET Get Alternative Names
    - [ ] GET Get Images
- [ ] TRENDING
    - [ ] GET Get Trending
- [ ] PEOPLE
    - [ ] GET Get Details
    - [ ] GET Get Changes
    - [ ] GET Get Movie Credits
    - [ ] GET Get TV Credits
    - [ ] GET Get Combined Credits
    - [ ] GET Get External IDs
    - [ ] GET Get Images
    - [ ] GET Get Tagged Images
    - [ ] GET Get Translations
    - [ ] GET Get Latest
    - [ ] GET Get Popular
- [ ] REVIEWS
    - [ ] GET Get Details
- [ ] SEARCH
    - [ ] GET Search Companies
    - [ ] GET Search Collections
    - [ ] GET Search Keywords
    - [ ] GET Search Movies
    - [ ] GET Multi Search
    - [ ] GET Search People
    - [ ] GET Search TV Shows
- [ ] TV
    - [ ] GET Get Details
    - [ ] GET Get Account States
    - [ ] GET Get Aggregate Credits
    - [ ] GET Get Alternative Titles
    - [ ] GET Get Changes
    - [ ] GET Get Content Ratings
    - [ ] GET Get Credits
    - [ ] GET Get Episode Groups
    - [ ] GET Get External IDs
    - [ ] GET Get Images
    - [ ] GET Get Keywords
    - [ ] GET Get Recommendations
    - [ ] GET Get Reviews
    - [ ] GET Get Screened Theatrically
    - [ ] GET Get Similar TV Shows
    - [ ] GET Get Translations
    - [ ] GET Get Videos
    - [ ] GET Get Watch Providers
    - [ ] POST Rate TV Show
    - [ ] DELETE Delete Rating
    - [ ] GET Get Latest
    - [ ] GET Get TV Airing Today
    - [ ] GET Get TV On The Air
    - [ ] GET Get Popular
    - [ ] GET Get Top Rated
- [ ] TV SEASONS
    - [ ] GET Get Details
    - [ ] GET Get Account States
    - [ ] GET Get Aggregate Credits
    - [ ] GET Get Changes
    - [ ] GET Get Credits
    - [ ] GET Get External IDs
    - [ ] GET Get Images
    - [ ] GET Get Translations
    - [ ] GET Get Videos
- [ ] TV EPISODES
    - [ ] GET Get Details
    - [ ] GET Get Account States
    - [ ] GET Get Changes
    - [ ] GET Get Credits
    - [ ] GET Get External IDs
    - [ ] GET Get Images
    - [ ] GET Get Translations
    - [ ] POST Rate TV Episode
    - [ ] DELETE Delete Rating
    - [ ] GET Get Videos    
- [ ] TV EPISODE GROUPS
    - [ ] GET Get Details
- [ ] WATCH PROVIDERS
    - [ ] GET Get Available Regions
    - [ ] GET Get Movie Providers
    - [ ] GET Get TV Providers

### v4

- [ ] Account (Low Priority)
    - [ ] Get Lists
    - [ ] GET Get Favorite Movies
    - [ ] GET Get Favorite TV Shows
    - [ ] GET Get Movie Recommendations
    - [ ] GET Get TV Show Recommendations
    - [ ] GET Get Movie Watchlist
    - [ ] GET Get TV Show Watchlist
    - [ ] GET Get Rated Movies
    - [ ] GET Get Rated TV Shows
- [ ] Auth (Low Priority)
    - [ ] POST Create Request Token
    - [ ] POST Create Access Token
    - [ ] DELETE Delete Access Token
- [ ] List (Low Priority)
    - [ ] GET Get List
    - [ ] POST Create List
    - [ ] PUT Update List
    - [ ] GET Clear List
    - [ ] DELETE Delete List
    - [ ] POST Add Items
    - [ ] PUT Update Items
    - [ ] DELETE Remove Items
    - [ ] GET Check Item Status
