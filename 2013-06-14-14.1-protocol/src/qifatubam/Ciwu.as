package qifatubam
{
   import rikewu.Nama;
   import flash.geom.Rectangle;
   import rikewu.Vakegopo;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import flash.system.System;
   import zipirytab.Console;


   public class Ciwu extends Viq
   {
      public function Ciwu(param1:Console) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var m:Console = param1;
         this.cefar=[];
         this.qehowy={};
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
                  remoter.registerCallback("graph",this.hypyko,true);
                  return;
      }

      private var cefar:Array;

      private var qehowy:Object;

      private var suh:Nama;

      private var sadizahe:Nama;

      private var cevocuby:Boolean;

      private var hew:Number = -1;

      public function add(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var newGroup:Boolean = false;
         var i:Vakegopo = null;
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
         var group:Nama = this.qehowy[n];
         if(!group)
         {
            newGroup=true;
            group=new Nama(n);
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
            group.kynaloqu=inverse;
         }
         var interest:Vakegopo = new Vakegopo(key,col);
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
               this.qehowy[n]=group;
               this.cefar.push(group);
            }
         }
         return;
      }

      public function keryh(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Nama = this.qehowy[param1];
         if(!_loc4_)
         {
            return;
         }
         _loc4_.low=param2;
         _loc4_.levycen=param3;
         _loc4_.fixed=!((isNaN(param2))||(isNaN(param3)));
         return;
      }

      public function remove(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:Vakegopo = null;
         if(param2==null&&param3==null)
         {
            this.removeGroup(param1);
         }
         else
         {
            if(this.qehowy[param1])
            {
               _loc4_=this.qehowy[param1].interests;
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
         var _loc3_:Nama = null;
         var _loc4_:* = 0;
         if(remoter.remoting==Segar.bufiti)
         {
            _loc2_=new ByteArray();
            _loc2_.writeUTF(param1);
            remoter.send("removeGroup",_loc2_);
         }
         else
         {
            _loc3_=this.qehowy[param1];
            _loc4_=this.cefar.indexOf(_loc3_);
            if(_loc4_>=0)
            {
               this.cefar.splice(_loc4_,1);
            }
            GlobalNotificationActionte this.qehowy[[param1]];
         }
         return;
      }

      public function get fpsMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(remoter.remoting==Segar.bufiti)
         {
            return console.panels.fpsMonitor;
         }
         return !(this.suh==null);
      }

      public function set fpsMonitor(param1:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:ByteArray = null;
         var _loc3_:* = 0;
         if(remoter.remoting==Segar.bufiti)
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
                  this.suh=this.duby(Nama.faforu);
                  this.suh.low=0;
                  this.suh.fixed=true;
                  this.suh.hunet=30;
               }
               else
               {
                  this.hew=-1;
                  _loc3_=this.cefar.indexOf(this.suh);
                  if(_loc3_>=0)
                  {
                     this.cefar.splice(_loc3_,1);
                  }
                  this.suh=null;
               }
               console.panels.mainPanel.updateMenu();
            }
         }
         return;
      }

      public function get memoryMonitor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(remoter.remoting==Segar.bufiti)
         {
            return console.panels.memoryMonitor;
         }
         return !(this.sadizahe==null);
      }

      public function set memoryMonitor(param1:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:ByteArray = null;
         var _loc3_:* = 0;
         if(remoter.remoting==Segar.bufiti)
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
                  this.sadizahe=this.duby(Nama.lojebywo);
                  this.sadizahe.vocyj=20;
               }
               else
               {
                  _loc3_=this.cefar.indexOf(this.sadizahe);
                  if(_loc3_>=0)
                  {
                     this.cefar.splice(_loc3_,1);
                  }
                  this.sadizahe=null;
               }
               console.panels.mainPanel.updateMenu();
            }
         }
         return;
      }

      private function duby(param1:int) : Nama {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Nama = new Nama("special");
         _loc2_.type=param1;
         this.cefar.push(_loc2_);
         var _loc3_:Vakegopo = new Vakegopo("special");
         if(param1==Nama.faforu)
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
         var _loc2_:Vakegopo = null;
         var _loc3_:* = NaN;
         var _loc4_:Nama = null;
         var _loc5_:* = false;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:uint = 0;
         var _loc12_:ByteArray = null;
         var _loc13_:uint = 0;
         for each (_loc4_ in this.cefar)
         {
            _loc5_=true;
            if(_loc4_.vocyj>1)
            {
               _loc4_.cekarov++;
               if(_loc4_.cekarov<_loc4_.vocyj)
               {
                  _loc5_=false;
               }
               else
               {
                  _loc4_.cekarov=0;
               }
            }
            if(_loc5_)
            {
               _loc6_=_loc4_.type;
               _loc7_=_loc4_.hunet;
               _loc8_=_loc4_.interests;
               if(_loc6_==Nama.faforu)
               {
                  _loc4_.levycen=param1;
                  _loc2_=_loc8_[0];
                  _loc9_=getTimer();
                  if(this.hew>=0)
                  {
                     _loc10_=_loc9_-this.hew;
                     _loc3_=1000/_loc10_;
                     _loc2_.setValue(_loc3_,_loc7_);
                  }
                  this.hew=_loc9_;
               }
               else
               {
                  if(_loc6_==Nama.lojebywo)
                  {
                     _loc2_=_loc8_[0];
                     _loc3_=Math.round(System.totalMemory/10485.76)/100;
                     _loc4_.sosocomef(_loc3_);
                     _loc2_.setValue(_loc3_,_loc7_);
                  }
                  else
                  {
                     this.nesara(_loc4_);
                  }
               }
            }
         }
         if((remoter.canSend)&&((this.cevocuby)||(this.cefar.length)))
         {
            _loc11_=this.cefar.length;
            _loc12_=new ByteArray();
            _loc13_=0;
            while(_loc13_<_loc11_)
            {
               Nama(this.cefar[_loc13_]).kyby(_loc12_);
               _loc13_++;
            }
            remoter.send("graph",_loc12_);
            this.cevocuby=this.cefar.length>0;
         }
         return this.cefar;
      }

      private function nesara(param1:Nama) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var i:Vakegopo = null;
         var v:Number = NaN;
         var group:Nama = param1;
         for each (i in group.interests)
         {
            try
            {
               v=i.hyjaqo();
               i.setValue(v,group.hunet);
            }
            catch(e:Error)
            {
               if(!(_loc6_&&(param1)))
               {
                  if(!_loc6_)
                  {
                     if(!(_loc6_&&(param1)))
                     {
                        if(!(_loc6_&&(_loc3_)))
                        {
                           if(!(_loc6_&&(_loc2_)))
                           {
                              if(_loc7_)
                              {
                              }
                              else
                              {
                                 report("Error with graph value for key ["+i.key+"] in ["+e,10);
                                 if(_loc7_||(_loc2_))
                                 {
                                    remove(group.name,i.obj,i.prop);
                                 }
                                 group.sosocomef(v);
                                 continue;
                              }
                           }
                        }
                     }
                     else
                     {
                        if(!(_loc6_&&(_loc3_)))
                        {
                        }
                     }
                  }
                  if(!(_loc6_&&(_loc3_)))
                  {
                  }
               }
            }
            group.sosocomef(v);
         }
         return;
      }

      private function hypyko(param1:ByteArray=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = null;
         if((param1)&&(param1.length))
         {
            param1.position=0;
            _loc2_=new Array();
            while(param1.bytesAvailable)
            {
               _loc2_.push(Nama.buwopena(param1));
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