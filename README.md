
<!-- badges: start -->

[![R build
status](https://github.com/CUNY-MSDS/Syllabi/workflows/build-syllabi/badge.svg)](https://github.com/CUNY-MSDS/Syllabi/actions)
<!-- badges: end -->

# Course Syllabi for CUNY Data Science and Information Systems

  - [IS381 Statistics and Probability with R](IS381/IS381.pdf)
    ([source](IS381/IS381.qmd))
  - [IS382 Predictive Modeling](IS382/IS382.pdf)
    ([source](IS382/IS382.qmd))

## For instructors: Creating a new syllabus

You can [download this repository as a zip
file](https://github.com/CUNY-MSDS/Syllabi/archive/refs/heads/master.zip)
or clone using the following command:

``` console
git clone https://github.com/CUNY-MSDS/Syllabi.git
```

The [`template`](template/) directory contains a Quarto document
template along with an Excel file for the schedule. Copy the contents of
the `template` folder into a folder for you class using the course
number (e.g. `IS381`, `DATA606`). Or run the following command in the
terminal:

``` console
cp -r template IS382
mv IS382/syllabus_template.qmd IS382/IS382.qmd
```

The frontmatter has a number of parameters that should be filled in,
specifically:

  - `course_name` - The course number and title.
  - `semester` - The semester for this syllabus.
  - `credits` - Credits hours.
  - `instructor` - Instructor name.
  - `prerequisites` - Course prerequisites.
  - `email` - Email address of the instructor.
  - `github` - Github username of the instructor.
  - `office_hours` - Office hours.

The rest of the Quarto document can be editted in any plain text editor.
You can use most markdown formatting. [Click
here](https://daringfireball.net/projects/markdown/basics) for an
introduction to markdown. RStudio has a visual editor as well. Note that
there a number of `include` commands that import sections required in
every syllabus (please do not edit any files in the [`common`](common/)
directory).

To build the course syllabus you can click the `Render` button in
RStudio. Or run the following command from the terminal:

``` console
quarto render IS381/IS381.qmd --to pdf
```

Note that whenever a change is made to the repository a [Github
action](https://github.com/CUNY-MSDS/Syllabi/actions) will automatically
build a PDF of the syllabus and update this README file to include links
to the available syllabi. Therefore changes can be made directly to the
`qmd` files using the editor feature of Github.
