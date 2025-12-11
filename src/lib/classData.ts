/**
 * Exports typed class data and utilities to help use it when
 * rendering other pages
 */
import { base } from '$app/paths';
import class_data_raw from '../class/class_data.yaml';
import moment from 'moment';

// === Data ===
export const class_data = class_data_raw;
export const lectures_by_week = getLectureDataByWeek();

/** Sorts lecture data into a list-of-lists, sorting lectures into weeks. */
function getLectureDataByWeek() {
    const weekdays = class_data.class_days.length;
    const arr = [];
    const weeks = Math.floor(class_data.lectures.length / weekdays);
    for (let i = 0; i < weeks; i++) {
        arr.push(class_data.lectures.slice(i * weekdays, (i + 1) * weekdays));
    }
    return arr;
}

// === Helper Functions ===

/** Title cases a given string */
export function titleCase(s) {
    return s.replace(/(?:^| )\w/g, (substring) => substring.toUpperCase());
}

// Gets the week of a given lecture number.
export function getWeek(lectureNumber) {
    return Math.floor(lectureNumber / class_data.class_days.length);
}

// Gets a Moment object for the given lecture number.
export function getLectureMoment(lectureNumber) {
    const week = getWeek(lectureNumber);
    const dayOfWeek = lectureNumber % class_data.class_days.length;
    const weekday = class_data.class_days[dayOfWeek];

    return moment(class_data.start_date, 'YYYY/MM/DD').add(week, 'weeks').day(weekday);
}

// Gets the box color for a particular material
export function getBoxColor(type) {
    switch (type) {
        case 'slides':
            return '#2689ff';
        case 'recording':
            return '#8c1515';
        case 'notes':
            return '#007c41';
        case 'code':
            return '#53565a';
        default:
            return '#767676';
    }
}

// Fixes up absolute links with the base if necessary.
export function fixupLink(baseLink) {
    if (baseLink.startsWith('/') && !baseLink.startsWith('//')) {
        return `${base}${baseLink}`;
    }
    return baseLink;
}

/** Determines if the url is absolute and returns whether or not to open in a new window (yes for external) */
export function getTarget(url) {
    return url.startsWith('http') || url.startsWith('//') ? '_blank' : '_self';
}
