with report as (

    select *
    from {{ var('report') }}

),

ad as (

    select *
    from {{ var('ad') }}

),

joined as (

    select
        ad.ad_id,
        ad.ad_name,
        report.date,
        report.impressions,
        report.clicks,
        report.spend
    from report
    left join ad
        on report.ad_id = ad.ad_id
)


select *
from joined
