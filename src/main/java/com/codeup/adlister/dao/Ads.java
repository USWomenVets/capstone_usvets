package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all(String q);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List <Ad> userAd(long userId);

    List <Ad> specAd(String adId);
}
