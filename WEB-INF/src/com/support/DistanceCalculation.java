package com.support;

public class DistanceCalculation {

    public double distance(double lat1, double lon1, double lat2, double lon2, char unit) {

        double theta = lon1 - lon2;

        double d2r = deg2rad(lat1);
        System.out.println("d2r :" + d2r);

        double s = Math.sin(d2r);

        System.out.println("s :" + s);

        double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2))
                + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));

        dist = Math.acos(dist);

        dist = rad2deg(dist);

        dist = dist * 60 * 1.1515;

        if (unit == 'K') {

            dist = dist * 1.609344;

        } else if (unit == 'N') {

            dist = dist * 0.8684;

        }

        return (dist);

    }

    /* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

    /* :: This function converts decimal degrees to radians : */

    /* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

    private double deg2rad(double deg) {

        return (deg * Math.PI / 180.0);

    }

    /* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

    /* :: This function converts radians to decimal degrees : */

    /* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */

    private double rad2deg(double rad) {

        return (rad * 180 / Math.PI);

    }

    public static void main(String[] args) {

        DistanceCalculation calculation = new DistanceCalculation();

        // System.out.println(calculation.distance(32.9697, -96.80322, 29.46786,
        // -98.53506, 'M') + " Miles\n");

        System.out.println(
                calculation.distance(12.87437054996825, 77.55522107656247, 12.839560172636455, 77.6774439769531, 'K')
                        + " Kilometers\n");

        System.out.println(
                calculation.distance(12.87437054996825, 77.55522107656247, 12.938623155081324, 77.55865430410154, 'K')
                        + " Kilometers\n");

    }

}
