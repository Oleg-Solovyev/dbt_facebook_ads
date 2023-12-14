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
        report.date,
        report.clicks,
        report.impressions,
        report.spend
    from report
    left join ad
        on report.ad_id = ad.ad_id
)


select *
from joined
