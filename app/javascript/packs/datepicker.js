import flatpickr from "flatpickr";
import { French } from "flatpickr/dist/l10n/fr";
import _ from "lodash";
import "flatpickr/dist/flatpickr.min.css";
import "flatpickr/dist/themes/airbnb.css";

const date = () => {
  const today = new Date();
  let dd = today.getDate();

  let mm = today.getMonth() + 1;
  const yyyy = today.getFullYear();
  if (dd < 10) {
    dd = `0${dd}`;
  }

  if (mm < 10) {
    mm = `0${mm}`;
  }

  return `${dd}/${mm}/${yyyy}`;
};

flatpickr(".datepicker", {
  dateFormat: "d/m/Y",
  locale: French,
  allowInput: true,
  minDate: date()
});

const updateFromDates = event => {
  const fromInputs = document.querySelectorAll(".stripe-from");
  _.each(fromInputs, el => {
    el.value = event.target.value;
  })
};

document.getElementById("dates_from").addEventListener("change", () => {
  updateFromDates(event);
});

const updateToDates = event => {
  const toInputs = document.querySelectorAll(".stripe-to");
  _.each(toInputs, el => {
    el.value = event.target.value;
  })
};

document.getElementById("dates_to").addEventListener("change", () => {
  updateToDates(event);
});
