	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import quxiaodingdan from '@/views/quxiaodingdan/list'
	import jieshourenwu from '@/views/jieshourenwu/list'
	import yonghu from '@/views/yonghu/list'
	import chat from '@/views/chat/list'
	import config from '@/views/config/list'
	import paotuirenwu from '@/views/paotuirenwu/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/news',
			name: '校园资讯',
			component: news
		}
		,{
			path: '/quxiaodingdan',
			name: '取消订单',
			component: quxiaodingdan
		}
		,{
			path: '/jieshourenwu',
			name: '接受任务',
			component: jieshourenwu
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/chat',
			name: '客服投诉',
			component: chat
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/paotuirenwu',
			name: '跑腿任务',
			component: paotuirenwu
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
