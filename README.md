
## Setup
Run through the standard Rails setup.

```bash
$ bundle install
$ rake db:{create,migrate}
$ rails s
```

Navigate to `http://localhost:3000`

_Note: This should bring up an error, but you should be able to start the server fine._

### Challenge

Sign up for a National Park Service API Key [here](https://www
Once you obtain your API key, you may begin making API requests.
 yRRThasOf5DzprAjQyZjG7Q8dN00iyBEgWh04BmU

Each API request contains:
Resource Endpoint
Query String Parameters
HTTP Request Header with an API Key
For example, consider the following URL:
https://developer.nps.gov/api/v1/alerts?parkCode=acad,dena

In the above request, two of the three necessary components are represented.
Resource Endpoint - https://developer.nps.gov/api/v1/alerts
Query String Parameters - parkCode=acad,dena
However, just pasting that URL in a browser address bar won't return any results as you also need to send your API key in the HTTP request header. In order to learn more about that, be sure to read the API Guides page about authentication. Also, test out queries and learn more about the API in the API Documentation section of this website.
.nps.gov/subjects/developer/get-started.htm)

[National Park Service API Docs](https://www.nps.gov/subjects/developer/api-documentation.htm)

Complete the following user story

```
As a user,
When I select "Tennessee" from the form,
(Note: use the existing form)
And click on "Find Parks",
I see the total of parks found,
And for each park I see:
- full name of the park
- description
- direction info
- standard hours for operation
```
