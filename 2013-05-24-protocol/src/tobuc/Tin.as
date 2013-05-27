package tobuc
{
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.utils.ByteArray;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   import lutyfopo.Console;
   import lutyfopo.Cc;


   public class Tin extends Zuby
   {
      public function Tin(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      public function map(param1:DisplayObjectContainer, param2:uint=0, param3:String=null) : void {
         var _loc17_:* = true;
         var _loc18_:* = false;
         var _loc5_:* = false;
         var _loc9_:DisplayObject = null;
         var _loc10_:String = null;
         var _loc11_:DisplayObjectContainer = null;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:DisplayObject = null;
         var _loc15_:uint = 0;
         var _loc16_:String = null;
         if(!param1)
         {
            report("Not a DisplayObjectContainer.",10,true,param3);
            return;
         }
         var _loc4_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:Array = new Array();
         _loc8_.push(param1);
         while(_loc6_<_loc8_.length)
         {
            _loc9_=_loc8_[_loc6_];
            _loc6_++;
            if(_loc9_ is DisplayObjectContainer)
            {
               _loc11_=_loc9_ as DisplayObjectContainer;
               _loc12_=_loc11_.numChildren;
               _loc13_=0;
               while(_loc13_<_loc12_)
               {
                  _loc14_=_loc11_.getChildAt(_loc13_);
                  _loc8_.splice(_loc6_+_loc13_,0,_loc14_);
                  _loc13_++;
               }
            }
            if(_loc7_)
            {
               if(_loc7_ is DisplayObjectContainer&&((_loc7_ as DisplayObjectContainer).contains(_loc9_)))
               {
                  _loc4_++;
               }
               else
               {
                  while(_loc7_)
                  {
                     _loc7_=_loc7_.parent;
                     if(_loc7_ is DisplayObjectContainer)
                     {
                        if((_loc7_ as DisplayObjectContainer).contains(_loc9_))
                        {
                           _loc4_++;
                        }
                        else
                        {
                           continue;
                        }
                     }
                     else
                     {
                        continue;
                     }
                  }
               }
            }
            _loc10_="";
            _loc13_=0;
            while(_loc13_<_loc4_)
            {
               _loc10_=_loc10_+(_loc13_==_loc4_-1?" ? ":" - ");
               _loc13_++;
            }
            if(param2<=0||_loc4_<=param2)
            {
               _loc5_=false;
               _loc15_=console.refs.setLogRef(_loc9_);
               _loc16_=_loc9_.name;
               if(_loc15_)
               {
                  _loc16_="<a href=\'event:cl_"+_loc15_+"\'>"+_loc16_+"</a>";
               }
               if(_loc9_ is DisplayObjectContainer)
               {
                  _loc16_="<b>"+_loc16_+"</b>";
               }
               else
               {
                  _loc16_="<i>"+_loc16_+"</i>";
               }
               _loc10_=_loc10_+(_loc16_+" "+console.refs.makeRefTyped(_loc9_));
               report(_loc10_,_loc9_ is DisplayObjectContainer?5:2,true,param3);
            }
            else
            {
               _loc5_=true;
               report(_loc10_+"...",5,true,param3);
            }
            _loc7_=_loc9_;
         }
         report(param1.name+":"+console.refs.makeRefTyped(param1)+" has "+(_loc8_.length-1)+" children/sub-children.",9,true,param3);
         if(config.commandLineAllowed)
         {
            report("Click on the child display\'s name to set scope.",-2,true,param3);
         }
         return;
      }

      public function explode(param1:Object, param2:int=3, param3:int=9) : String {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc6_:XMLList = null;
         var _loc7_:String = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:String = null;
         var _loc4_:* = typeof param1;
         if(param1==null)
         {
            return "<p-2>"+param1+"</p-2>";
         }
         if(param1 is String)
         {
            return "\""+Bamyhugep.vyjyb(param1 as String)+"\"";
         }
         if(!(_loc4_=="object")||param2==0||param1 is ByteArray)
         {
            return console.refs.makeString(param1);
         }
         if(param3<0)
         {
            param3=0;
         }
         var _loc5_:XML = describeType(param1);
         var _loc8_:Array = [];
         _loc6_=_loc5_["accessor"];
         for each (_loc9_ in _loc6_)
         {
            _loc7_=_loc9_.@name;
            if(_loc9_.@access!="writeonly")
            {
            }
            else
            {
               _loc8_.push(_loc7_);
               continue;
            }
            try
            {
               _loc8_.push(this.hyrebyd(param1,_loc7_,param2,param3));
            }
            catch(e:Error)
            {
            }
         }
         _loc6_=_loc5_["variable"];
         for each (_loc10_ in _loc6_)
         {
            _loc7_=_loc10_.@name;
            _loc8_.push(this.hyrebyd(param1,_loc7_,param2,param3));
         }
         try
         {
            for (_loc11_ in param1)
            {
               _loc8_.push(this.hyrebyd(param1,_loc11_,param2,param3));
            }
         }
         catch(e:Error)
         {
         }
         return "<p"+param3+">{"+Bamyhugep.cyqevu(param1)+"</p"+param3+"> "+_loc8_.join(", ")+"<p"+param3+">}</p"+param3+">";
      }

      private function hyrebyd(param1:*, param2:String, param3:int, param4:int) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         return param2+":"+this.explode(param1[param2],param3-1,param4-1);
      }

      public function gymu(param1:int, param2:int) : String {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc3_:Error = new Error();
         var _loc4_:String = _loc3_.hasOwnProperty("getStackTrace")?_loc3_.getStackTrace():null;
         if(!_loc4_)
         {
            return "";
         }
         var _loc5_:* = "";
         var _loc6_:Array = _loc4_.split(new RegExp("\\n\\sat\\s"));
         var _loc7_:int = _loc6_.length;
         var _loc8_:RegExp = new RegExp("Function|"+getQualifiedClassName(Console)+"|"+getQualifiedClassName(Cc));
         var _loc9_:* = false;
         var _loc10_:* = 2;
         while(_loc10_<_loc7_)
         {
            if(!(_loc6_[_loc10_].search(_loc8_)==0))
            {
               _loc9_=true;
            }
            _loc10_++;
         }
         return _loc5_;
      }
   }

}