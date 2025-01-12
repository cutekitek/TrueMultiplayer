local chunks_table = {}

function on_world_open()
    local base_player = player.create("base")
    player.set_pos(base_player, 0, 100, 0)
end

function on_chunk_present(x, z)
    chunks_table[x .. z] = false
end

function on_chunk_remove(x, z)
    print("chunk unloaded", x, z, get_chunk_hash(x, z))
end