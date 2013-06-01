package losiba
{
[CLASS1839]   import cakajitez.Rinicu;
   import flash.geom.Rectangle;
   import cakajitez.Lyviqih;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import flash.system.System;
   import wacic.Console;


   public class Qul extends Hubobag
   {
      public function Qul(param1:Console) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var m:Console = param1;
         this.dypyzosyh=[];
         this.zitaze={};
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
                  remoter.registerCallback("graph",this.besaf,true);
                  return;
      }

      private var dypyzosyh:Array;

      private var zitaze:Object;

      private var nunyz:Rinicu;

      private var zimi:Rinicu;

      private var gemi:Boolean;

      private var tobales:Number = -1;

      public function add(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var newGroup:Boolean = false;
         var i:Lyviqih = null;
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
         var group:Rinicu = this.zitaze[n];
         if(!group)
         {
            newGroup=true;
            group=new Rinicu(n);
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
            group.cisiz=inverse;
         }
         var interest:Lyviqih = new Lyviqih(key,col);
         var v:Number = NaN;
         v=interest.setObject(obj,prop);
         if(isNaN(v))
         {
            report("Graph value for key ["+key+"] in ["+n+"] is not a number (NaN).",10);
         }
         else
         {
            group.interests.push(interest);
            if(newGroup)
            {
               this.zitaze[n]=group;
               this.dypyzosyh.push(group);
            }
         }
         return;
      }

      public function nivuwa(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Rinicu = this.zitaze[param1];
         if(!_loc4_)
         {
            return;
         }
         _loc4_.low=param2;
         _loc4_.wubo=param3;
         _loc4_.fixed=!((isNaN(param2))||(isNaN(param3)));
         return;
      }

      public function remove(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:Lyviqih = null;
         if(param2==null&&param3==null)
         {
            this.removeGroup(param1);
         }
         else
         {
            if(this.zitaze[param1])
            {
               _loc4_=this.zitaze[param1].interests;
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
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:ByteArray = null;
         var _loc3_:Rinicu = null;
         var _loc4_:* = 0;
         if(remoter.remoting==Kelasydo.pabyry)
         {
            _loc2_=new ByteArray();
            _loc2_.writeUTF(param1);
            remoter.send("removeGroup",_loc2_);
         }
         else
         {
            _loc3_=this.zitaze[param1];
            _loc4_=this.dypyzosyh.indexOf(_loc3_);
            if(_loc4_>=0)
            {
               this.dypyzosyh.splice(_loc4_,1);
            }
            delete this.zitaze[[param1]];
         }
         return;
      }

      public function get fpsMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(remoter.remoting==Kelasydo.pabyry)
         {
            return console.panels.fpsMonitor;
         }
         return !(this.nunyz==null);
      }

      public function set fpsMonitor(param1:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:ByteArray = null;
         var _loc3_:* = 0;
         if(remoter.remoting==Kelasydo.pabyry)
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
                  this.nunyz=this.wobo(Rinicu.pasal);
                  this.nunyz.low=0;
                  this.nunyz.fixed=true;
                  this.nunyz.docy=30;
               }
               else
               {
                  this.tobales=-1;
                  _loc3_=this.dypyzosyh.indexOf(this.nunyz);
                  if(_loc3_>=0)
                  {
                     this.dypyzosyh.splice(_loc3_,1);
                  }
                  this.nunyz=null;
               }
               console.panels.mainPanel.updateMenu();
            }
         }
         return;
      }

      public function get memoryMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(remoter.remoting==Kelasydo.pabyry)
         {
            return console.panels.memoryMonitor;
         }
         return !(this.zimi==null);
      }

      public function set memoryMonitor(param1:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:ByteArray = null;
         var _loc3_:* = 0;
         if(remoter.remoting==Kelasydo.pabyry)
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
                  this.zimi=this.wobo(Rinicu.copukuvi);
                  this.zimi.fiji=20;
               }
               else
               {
                  _loc3_=this.dypyzosyh.indexOf(this.zimi);
                  if(_loc3_>=0)
                  {
                     this.dypyzosyh.splice(_loc3_,1);
                  }
                  this.zimi=null;
               }
               console.panels.mainPanel.updateMenu();
            }
         }
         return;
      }

      private function wobo(param1:int) : Rinicu {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Rinicu = new Rinicu("special");
         _loc2_.type=param1;
         this.dypyzosyh.push(_loc2_);
         var _loc3_:Lyviqih = new Lyviqih("special");
         if(param1==Rinicu.pasal)
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
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc2_:Lyviqih = null;
         var _loc3_:* = NaN;
         var _loc4_:Rinicu = null;
         var _loc5_:* = false;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:uint = 0;
         var _loc12_:ByteArray = null;
         var _loc13_:uint = 0;
         for each (_loc4_ in this.dypyzosyh)
         {
            _loc5_=true;
            if(_loc4_.fiji>1)
            {
               _loc4_.rakahi++;
               if(_loc4_.rakahi<_loc4_.fiji)
               {
                  _loc5_=false;
               }
               else
               {
                  _loc4_.rakahi=0;
               }
            }
            if(_loc5_)
            {
               _loc6_=_loc4_.type;
               _loc7_=_loc4_.docy;
               _loc8_=_loc4_.interests;
               if(_loc6_==Rinicu.pasal)
               {
                  _loc4_.wubo=param1;
                  _loc2_=_loc8_[0];
                  _loc9_=getTimer();
                  if(this.tobales>=0)
                  {
                     _loc10_=_loc9_-this.tobales;
                     _loc3_=1000/_loc10_;
                     _loc2_.setValue(_loc3_,_loc7_);
                  }
                  this.tobales=_loc9_;
               }
               else
               {
                  if(_loc6_==Rinicu.copukuvi)
                  {
                     _loc2_=_loc8_[0];
                     _loc3_=Math.round(System.totalMemory/10485.76)/100;
                     _loc4_.qepulaluj(_loc3_);
                     _loc2_.setValue(_loc3_,_loc7_);
                  }
                  else
                  {
                     this.borago(_loc4_);
                  }
               }
            }
         }
         if((remoter.canSend)&&((this.gemi)||(this.dypyzosyh.length)))
         {
            _loc11_=this.dypyzosyh.length;
            _loc12_=new ByteArray();
            _loc13_=0;
            while(_loc13_<_loc11_)
            {
               Rinicu(this.dypyzosyh[_loc13_]).matib(_loc12_);
               _loc13_++;
            }
            remoter.send("graph",_loc12_);
            this.gemi=this.dypyzosyh.length>0;
         }
         return this.dypyzosyh;
      }

      private function borago(param1:Rinicu) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var i:Lyviqih = null;
         var v:Number = NaN;
         var group:Rinicu = param1;
         for(;group.interests hasNext _loc3_;if(_loc7_||(_loc2_))
         {
            continue;
            },report("Error with graph value for key ["+"] in ["+group.name+e,10),if(!(_loc6_&&(_loc2_)))
            {
               remove(group.name,i.obj,i.prop);
               do
               {
                  group.qepulaluj(v);
               }
               while(true);
               {
                  i=nextValue(_loc3_,_loc4_);
                  try
                  {
                     v=i.jomam();
                     i.setValue(v,group.docy);
                  }
                  catch(e:Error)
                  {
                     if(_loc7_||(param1))
                     {
                        if(_loc7_||(param1))
                        {
                           if(_loc7_)
                           {
                              if(!(_loc6_&&(_loc2_)))
                              {
                              }
                           }
                        }
                     }
                     if(_loc7_||(param1))
                     {
                        if(_loc7_||(param1))
                        {
                           continue;
                        }
                     }
                     report("Error with graph value for key ["+"] in ["+e,10);
                     if(!(_loc6_&&(_loc2_)))
                     {
                        remove(group.name,i.obj,i.prop);
                     }
                  }
                  continue loop1;
               }
               return;
      }

      private function besaf(param1:ByteArray=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = null;
         if((param1)&&(param1.length))
         {
            param1.position=0;
            _loc2_=new Array();
            while(param1.bytesAvailable)
            {
               _loc2_.push(Rinicu.ciwygeruk(param1));
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
[/CLASS]
}