$(document).ready(function(){
	$('.todobtn a').click(function(){
		$(this).addClass('active').siblings().removeClass('active')
	})
})

var store = {
	save(key,value){
		localStorage.setItem(key,JSON.stringify(value))
	},
	fetch(key){
		return JSON.parse(localStorage.getItem(key))  || []
	}
}
var filter={
				all:function(){
					return list;
				},
				unfinished:function(){
					return list.filter(function(item){
						return !item.isChecked;
					})
				},
				finished:function(){
					return list.filter(function(item){
						return item.isChecked;
					})
				}
				
			}
var list=store.fetch('key')
var vm=new Vue({
	el:'#demo',
	data:{
		list:list,
		todo:'',
		edittodos:'',
		visibility:'all'
	},
	watch:{
		list:{
			handler:function(){
				store.save("key",this.list);
			},
			deep:true
		}
	},
	computed:{
		noCheckedlength:function(){
			return this.list.filter(function(item){
				return !item.isChecked
			}).length
		},
		filteredList:function(){
			
			return filter[this.visibility]? filter[this.visibility](list):list;
		}
	},
	methods:{
		addTodo(){
			this.list.push({
				title:this.todo,
				isChecked:false
			});
			this.todo='';
		},
		deletTodo(todo){
			var index=this.list.indexOf(todo);
			this.list.splice(index,1);
		},
		editTodo(todo){
			this.edittodos=todo;
		},
		editTodoed(){
			this.edittodos='';
		}
	},
	directives:{
		"foucs":{
			update(el,binding){
				if(binding.value){
					el.focus()
				}
			}
		}
	}
})


function watchHashChange(){
	var hash=window.location.hash.slice(1);
	vm.visibility=hash
}
watchHashChange();
window.addEventListener("hashchange",watchHashChange);
