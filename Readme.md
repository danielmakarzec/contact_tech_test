
## CONTACT APP

Holding and working with large databases creates a need to filter them based on certain criteria – for example, the location they're based in.

The program accepts two inputs:

-   A JSON array of talent, containing objects with `name`, `location` and `date_of_birth` attributes
-   A location to filter by

The program reads the JSON file, filters its data, and outputs the names of talent whose location matches the location supplied.

---
**For example, given:**

-   The following JSON data:

```json
[
  {
    "name": "Homer Simpson",
    "location": "Springfield",
    "date_of_birth": "1956-05-12"
  },
  {
    "name": "Frank Reynolds",
    "location": "Philidelphia",
    "date_of_birth": "1944-11-17"
  },
  {
    "name": "Diane Nguyen",
    "location": "Los Angeles",
    "date_of_birth": "1980-03-19"
  },
  {
    "name": "Krusty the Clown",
    "location": "SpringField",
    "date_of_birth": "1957-10-29"
  }
]

```

-   A location of `Springfield`

The app will output:

```bash
Homer Simpson
Krusty the Clown
```
---

  - [Requirements](#requirements)
  - [Installlation](#installation)
  - [Ussage](#ussage)
  - [Testing](#testing)
  - [Contribute](#contribute)
  - [Support](#support)
  - [License](#lcense)


### Requirements

ruby 2.6.3 or higher

### Installation

+ RSpec 3.10
~~~bash
  $ bundle install --binstubs
  $ bin/rspec --init
~~~
### Ussage

```bash
  $ ruby app.js
```
Follow instructions on the screen.

### Testing

```bash
  $ rspec
```
Alternatively

```bash
  $ rspec spec/file_reader_spec.rb
  $ rspec spec/data_manager_spec.rb
```
### Components

App
- Execution

Interface
- Taking input from users
- Output results (List of talent)

FileReader
- File validation
- Data parsing and formating

DataManager
- Filter a list of talent objects based on location value
- Producing a list of names

### Contribute

TBC

### Support

If you are having issues, please let me know at danielmakarzec@gmail.com

### License

The project is licensed under the MIT license.