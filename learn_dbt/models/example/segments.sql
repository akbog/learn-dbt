select 
    c_custkey, 
    c_mktsegment, 
    {{ rename_segments('c_mktsegment') }} as mktsegment_adj
FROM {{ source('sample', 'customer') }} 