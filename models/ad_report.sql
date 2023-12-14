select ad.ad_id,
       report.date,
       report.clicks,
       report.impressions,
       report.spend
from facebook_ads.report
    left join facebook_ads.ad
    on report.ad_id = ad.ad_id
