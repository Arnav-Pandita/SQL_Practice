update Salary
set sex=case
            when sex='m' then 'f'
            else 'm'
        end;

--Write then value   not then sex=value
    --  else value
