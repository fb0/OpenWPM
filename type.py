from pyannotate_runtime import collect_types

collect_types.init_types_collection()
with collect_types.collect():
    import demo  # noqa: F401
collect_types.dump_stats("types.json")
