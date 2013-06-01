package tobuc
{
   import vajurym.Sosycijaj;
   import flash.geom.Rectangle;
   import vajurym.Pemovofe;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import flash.system.System;
   import lutyfopo.Console;


   public class Bibabiqop extends Zuby
   {
      public function Bibabiqop(param1:Console) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var m:Console = param1;
         this.buk=[];
         this.fudasyr={};
         super(m);
         remoter.registerCallback("fps",new function(param1:ByteArray):void
         {
            fpsMonitor=param1.readBoolean();
            return;
            });
            remoter.registerCallback("mem",new function(param1:ByteArray):void
            {
               memoryMonitor=param1.readBoolean();
               return;
               });
               remoter.registerCallback("removeGroup",new function(param1:ByteArray):void
               {
                  removeGroup(param1.readUTF());
                  return;
                  });
                  remoter.registerCallback("graph",this.nod,true);
                  return;
      }

      private var buk:Array;

      private var fudasyr:Object;

      private var gonuho:Sosycijaj;

      private var bigofyki:Sosycijaj;

      private var jyza:Boolean;

      private var nividic:Number = -1;

      public function add(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var newGroup:Boolean = false;
         var i:Pemovofe = null;
         var n:String = param1;
         var obj:Object = param2;
         var prop:String = param3;
         var col:Number = param4;
         var key:String = param5;
         var rect:Rectangle = param6;
         var inverse:Boolean = param7;
         if(obj==null)
         {
            report("ERROR: Graph ["+n+"] received a null object to graph property ["+prop+"].",10);
            return;
         }
         var group:Sosycijaj = this.fudasyr[n];
         if(!group)
         {
            newGroup=true;
            group=new Sosycijaj(n);
         }
         var interests:Array = group.interests;
         if((isNaN(col))||col<0)
         {
            if(interests.length<=5)
            {
               col=config.style["priority"+(10-interests.length*2)];
            }
            else
            {
               col=Math.random()*16777215;
            }
         }
         if(key==null)
         {
            key=prop;
         }
         for each (i in interests)
         {
            if(i.key==key)
            {
               report("Graph with key ["+key+"] already exists in ["+n+"]",10);
               return;
            }
         }
         if(rect)
         {
            group.rect=rect;
         }
         if(inverse)
         {
            group.mitapeqa=inverse;
         }
         var interest:Pemovofe = new Pemovofe(key,col);
         var v:Number = NaN;
         try
         {
            v=interest.setObject(obj,prop);
         }
         catch(e:Error)
         {
            if(!(_loc12_&&(param2)))
            {
               if(!_loc12_)
               {
                  if(!(_loc12_&&(param1)))
                  {
                     if(_loc11_||(this))
                     {
                        if(!_loc12_)
                        {
                           if(_loc11_)
                           {
                           }
                        }
                     }
                  }
               }
               if(_loc11_||(param2))
               {
               }
            }
            report("Error with graph value for ["+e,10);
            return;
         }
         if(isNaN(v))
         {
            report("Graph value for key ["+key+"] in ["+n+"] is not a number (NaN).",10);
         }
         else
         {
            group.interests.push(interest);
            if(newGroup)
            {
               this.fudasyr[n]=group;
               this.buk.push(group);
            }
         }
         return;
      }

      public function japipyne(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Sosycijaj = this.fudasyr[param1];
         if(!_loc4_)
         {
            return;
         }
         _loc4_.low=param2;
         _loc4_.has=param3;
         _loc4_.fixed=!((isNaN(param2))||(isNaN(param3)));
         return;
      }

      public function remove(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:Pemovofe = null;
         if(param2==null&&param3==null)
         {
            this.removeGroup(param1);
         }
         else
         {
            if(this.fudasyr[param1])
            {
               _loc4_=this.fudasyr[param1].interests;
               _loc5_=_loc4_.length-1;
               while(_loc5_>=0)
               {
                  _loc6_=_loc4_[_loc5_];
                  if((param2==null||_loc6_.obj==param2)&&(param3==null||_loc6_.prop==param3))
                  {
                     _loc4_.splice(_loc5_,1);
                  }
                  _loc5_--;
               }
               if(_loc4_.length==0)
               {
                  this.removeGroup(param1);
               }
            }
         }
         return;
      }

      private function removeGroup(param1:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:ByteArray = null;
         var _loc3_:Sosycijaj = null;
         var _loc4_:* = 0;
         if(remoter.remoting==Wywysok.mysewe)
         {
            _loc2_=new ByteArray();
            _loc2_.writeUTF(param1);
            remoter.send("removeGroup",_loc2_);
         }
         else
         {
            _loc3_=this.fudasyr[param1];
            _loc4_=this.buk.indexOf(_loc3_);
            if(_loc4_>=0)
            {
               this.buk.splice(_loc4_,1);
            }
            delete this.fudasyr[[param1]];
         }
         return;
      }

      public function get fpsMonitor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(remoter.remoting==Wywysok.mysewe)
         {
            return console.panels.fpsMonitor;
         }
         return !(this.gonuho==null);
      }

      public function set fpsMonitor(param1:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:ByteArray = null;
         var _loc3_:* = 0;
         if(remoter.remoting==Wywysok.mysewe)
         {
            _loc2_=new ByteArray();
            _loc2_.writeBoolean(param1);
            remoter.send("fps",_loc2_);
         }
         else
         {
            if(param1!=this.fpsMonitor)
            {
               if(param1)
               {
                  this.gonuho=this.raqyruqu(Sosycijaj.koconeniw);
                  this.gonuho.low=0;
                  this.gonuho.fixed=true;
                  this.gonuho.dupahete=30;
               }
               else
               {
                  this.nividic=-1;
                  _loc3_=this.buk.indexOf(this.gonuho);
                  if(_loc3_>=0)
                  {
                     this.buk.splice(_loc3_,1);
                  }
                  this.gonuho=null;
               }
               console.panels.mainPanel.updateMenu();
            }
         }
         return;
      }

      public function get memoryMonitor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(remoter.remoting==Wywysok.mysewe)
         {
            return console.panels.memoryMonitor;
         }
         return !(this.bigofyki==null);
      }

      public function set memoryMonitor(param1:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:ByteArray = null;
         var _loc3_:* = 0;
         if(remoter.remoting==Wywysok.mysewe)
         {
            _loc2_=new ByteArray();
            _loc2_.writeBoolean(param1);
            remoter.send("mem",_loc2_);
         }
         else
         {
            if(param1!=this.memoryMonitor)
            {
               if(param1)
               {
                  this.bigofyki=this.raqyruqu(Sosycijaj.gymyt);
                  this.bigofyki.nytyhuri=20;
               }
               else
               {
                  _loc3_=this.buk.indexOf(this.bigofyki);
                  if(_loc3_>=0)
                  {
                     this.buk.splice(_loc3_,1);
                  }
                  this.bigofyki=null;
               }
               console.panels.mainPanel.updateMenu();
            }
         }
         return;
      }

      private function raqyruqu(param1:int) : Sosycijaj {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Sosycijaj = new Sosycijaj("special");
         _loc2_.type=param1;
         this.buk.push(_loc2_);
         var _loc3_:Pemovofe = new Pemovofe("special");
         if(param1==Sosycijaj.koconeniw)
         {
            _loc3_.col=16724787;
         }
         else
         {
            _loc3_.col=5267711;
         }
         _loc2_.interests.push(_loc3_);
         return _loc2_;
      }

      public function update(param1:Number=0) : Array {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc2_:Pemovofe = null;
         var _loc3_:* = NaN;
         var _loc4_:Sosycijaj = null;
         var _loc5_:* = false;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:uint = 0;
         var _loc12_:ByteArray = null;
         var _loc13_:uint = 0;
         for each (_loc4_ in this.buk)
         {
            _loc5_=true;
            if(_loc4_.nytyhuri>1)
            {
               _loc4_.nif++;
               if(_loc4_.nif<_loc4_.nytyhuri)
               {
                  _loc5_=false;
               }
               else
               {
                  _loc4_.nif=0;
               }
            }
            if(_loc5_)
            {
               _loc6_=_loc4_.type;
               _loc7_=_loc4_.dupahete;
               _loc8_=_loc4_.interests;
               if(_loc6_==Sosycijaj.koconeniw)
               {
                  _loc4_.has=param1;
                  _loc2_=_loc8_[0];
                  _loc9_=getTimer();
                  if(this.nividic>=0)
                  {
                     _loc10_=_loc9_-this.nividic;
                     _loc3_=1000/_loc10_;
                     _loc2_.setValue(_loc3_,_loc7_);
                  }
                  this.nividic=_loc9_;
               }
               else
               {
                  if(_loc6_==Sosycijaj.gymyt)
                  {
                     _loc2_=_loc8_[0];
                     _loc3_=Math.round(System.totalMemory/10485.76)/100;
                     _loc4_.botu(_loc3_);
                     _loc2_.setValue(_loc3_,_loc7_);
                  }
                  else
                  {
                     this.qyte(_loc4_);
                  }
               }
            }
         }
         if((remoter.canSend)&&((this.jyza)||(this.buk.length)))
         {
            _loc11_=this.buk.length;
            _loc12_=new ByteArray();
            _loc13_=0;
            while(_loc13_<_loc11_)
            {
               Sosycijaj(this.buk[_loc13_]).ponevyne(_loc12_);
               _loc13_++;
            }
            remoter.send("graph",_loc12_);
            this.jyza=this.buk.length>0;
         }
         return this.buk;
      }

      private function qyte(param1:Sosycijaj) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var i:Pemovofe = null;
         var v:Number = NaN;
         var group:Sosycijaj = param1;
         for(;group.interests hasNext _loc3_;report("Error with graph value for key ["+i.key+"]. "+e,10),if(_loc7_)
         {
            remove(group.name,i.obj,i.prop);
            },group.botu(v))
            {
               i=nextValue(_loc3_,_loc4_);
               try
               {
                  do
                  {
                     v=i.moriveh();
                     i.setValue(v,group.dupahete);
                  }
                  while(true);
               }
               catch(e:Error)
               {
                  if(_loc7_)
                  {
                     if(!_loc6_)
                     {
                        if(_loc7_)
                        {
                           if(!(_loc6_&&(_loc2_)))
                           {
                           }
                        }
                        else
                        {
                           if(_loc7_)
                           {
                              continue;
                           }
                        }
                     }
                     else
                     {
                        if(_loc7_)
                        {
                           continue;
                        }
                     }
                  }
                  if(!(_loc6_&&(_loc3_)))
                  {
                     if(!_loc6_)
                     {
                        if(_loc7_)
                        {
                        }
                     }
                  }
                  continue;
               }
               group.botu(v);
               continue loop1;
            }
            return;
      }

      private function nod(param1:ByteArray=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = null;
         if((param1)&&(param1.length))
         {
            param1.position=0;
            _loc2_=new Array();
            while(param1.bytesAvailable)
            {
               _loc2_.push(Sosycijaj.tusigo(param1));
            }
            console.panels.updateGraphs(_loc2_);
         }
         else
         {
            console.panels.updateGraphs(new Array());
         }
         return;
      }
   }

}