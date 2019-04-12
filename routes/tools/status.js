/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 21:08:42
 * @LastEditTime: 2019-04-12 21:11:53
 */
/**
 * @description: combine json methods
 * @param {type} 
 * @return: 
 */
module.exports =  (code, msg, data = {}) => {
    return {
        "code": code,
        "msg": msg,
        "data": data
    }
}
