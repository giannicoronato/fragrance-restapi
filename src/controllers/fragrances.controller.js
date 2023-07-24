import {pool} from '../db.js'

export const getFragrances = async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM fragrance')
         res.json(rows)
    } catch (error) {
        return res.status(500).json({
            message: 'Error al obtener las fragancias'
        })
    }
}

export const getFragrance = async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM fragrance WHERE id = ?', [req.params.id])
    
         if (rows.length <= 0) return res.status(404).json({
        message: 'Fragancia no encontrada'
    })
    res.json(rows[0])
    } catch (error) {
        return res.status(500).json({
            message: 'Error al obtener la fragancia'
        })  
    }
}

export const createFragrance = async (req, res) => {
    const {name, brand, image, description, accords} = req.body
    try {
        const [rows] = await pool.query('INSERT INTO fragrance (name, brand, image, description, accords) VALUES (?, ?, ?, ?, ?)', [name, brand, image, description, accords])
        res.send({ 
            id: rows.insertId,
            name,
            brand,
            image,
            description,
            accords
    })
    } catch (error) {
        return res.status(500).json({
            message: 'Error al crear la fragancia'
        })
    }
}


export const deleteFragrance = async (req, res) => {
    try {
        const [result] = await pool.query('DELETE FROM fragrance WHERE id = ?', [req.params.id])

        if (result.affectedRows <= 0) return res.status(404).json({
        message: 'Fragancia no encontrada'
        })
        res.sendStatus(204)
    } catch (error) {
        return res.status(500).json({
            message: 'Error al eliminar la fragancia'
        })
    }
}

export const  updateFragrance = async (req, res) => {
    const {id} = req.params
    const {name, brand, image, description, accords} = req.body
    
    try {
        const [result] = await pool.query('UPDATE fragrance SET name = IFNULL(?, name), brand = IFNULL(?, brand ), image = IFNULL(?, image), description = IFNULL(?, description), accords = IFNULL(?, accords) WHERE id = ?', [name, brand, image, description, accords, id])
    
        if (result.affectedRows <= 0) return res.status(404).json({
            message: 'Fragancia no encontrada'
        })

        const [rows] = await pool.query('SELECT * FROM fragrance WHERE id = ?', [id])
    
        res.json(rows[0])
    } catch (error) {
        return res.status(500).json({
            message: 'Error al actualizar la fragancia'
        })
    }
}