// 加载环境变量
require('dotenv').config();
const { TELEGRAM_BOT_TOKEN, OPENAI_API_KEY, DB_HOST } = process.env;
const fetch = require('node-fetch');
const { MessageSender } = require('./gpt4');  // 从上传的代码中导入类

// 示例使用
console.log(`Telegram Token: ${TELEGRAM_BOT_TOKEN}`);
console.log(`OpenAI Key: ${OPENAI_API_KEY}`);
console.log(`数据库地址: ${DB_HOST}`);
