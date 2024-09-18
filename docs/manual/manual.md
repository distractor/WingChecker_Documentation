# Manual for checkers

This manual covers the tools that are available to checkers using WingChecker.

It also covers the basic usage manual.

# Checking tools

WingChecker offers certain handy tools - all available in the ribbon.

## Switch view

By clicking on **Switch view** button, you can zoom-in or zoom-out during your measuring. This only affects the *Measuring* sheet.

## Print report

By clicking **Print report** a `pdf` file of the *Evaluation* sheet is generated. You can save it to your local disc.

Example report can be downloaded [here](../files/example_report.pdf){:download="WingChecker_example_report"}.

!!! note inline "Print report button disabled?"
    Yes. Print report button is disabled until **Evaluation** button is clicked.

## About

The **About** button will give you some insight into the WingChecker Add-in. Things like developers, version,... will be written there.

# Evaluation

For evaluation, follow this section.

## Measure the wing and evaluate

After each line from *Measuring* sheet has the measured length, go ahead and press the **Evaulation** button from the ribbon.

!!! warning "Missing line lengths"
    By pressing the **Evaluation** button, WingChecker will verify that **all** lines were measured. In case any measurement is missing, a warnning is issued.

## The *Evaluation* sheet

If all went right, your *Evaluation* sheet should look similar to 
![Image title](../images/evaluation_no_trims.png){ width=100%}

### Formatting explained

The wingchecker uses different (conditional) formatting rules for better experience:

- <span style="color:cyan">**CYAN:**</span> means that your input is expected. These cells are unlocked.
- <span style="color:RED">**RED:**</span> means that some tolerance is violated.
- <span style="color:GREEN">**GREEN:**</span> means that the tolerance is not violated.
- **Line level colors:** Each line is colored by a corresponding line level. A legend can be found on the very right.

    !!! note
        Stabilo and brake lines are always marked **S** and **F** respectively.

- **Number underlined twice:** Means that the deviation to the same line on the other side of the wing is larger than the allowed tolerance.

!!! note
    Make sure you fill all the cyan-colored cells.

# Trimming

To enable the trimming, click on **Trim settings** button in the ribbon.

## Generate trimming options

By clicking the **Trim settings** the following form opens:
![Image title](../images/current_trim_form.png){ width=70%}

Here you have to select the current (i.e. before the completed check) trim setup for all the main lines and for both sides of the wing.

All main lines are listed as rows in each table. Columns are the available trim options.

!!! note inline "Trim options"
    - **AS+:** cow hitch + single loop.
    - **AS:** cow hitch.
    - **DL (default for new wings):** double loop.
    - **SL:** single loop

!!! warning
    Each main line is expected to contain only one "x". An example of valid input is shown in the image above.

Once satisfied, click on the **Generate trimming options** button. This will generate trimming options on your *Evaluation* sheet. You should see something similar to this:


![Image title](../images/evaluation_with_trims.png){ width=100%}

## Using the trimmers

To use the trimmers, simply click on the selected trim option. A dropdown all possible trimming options appears. Select the one you fell is most appropriate.

![Image title](../images/trimmers_using.png){ width=80%}

After selection, the WingChecker will shorten/lengthen **all** lines that are attached to the corresponding main line you just changed.

# Finalization

Before you close the workbook:

1. (Optional) print report.
2. Save.