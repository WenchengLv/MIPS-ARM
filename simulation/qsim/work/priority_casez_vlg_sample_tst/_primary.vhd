library verilog;
use verilog.vl_types.all;
entity priority_casez_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end priority_casez_vlg_sample_tst;
