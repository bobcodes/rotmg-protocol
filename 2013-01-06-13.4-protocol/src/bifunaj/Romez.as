package bifunaj
{
[CLASS1560]   import flash.utils.describeType;


   public class Romez extends Object
   {
      public function Romez(param1:*) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.julus=this.foqu(param1);
         return;
      }

      private var julus:String;

      public function getString() : String {
         return this.julus;
      }

      private function foqu(param1:*) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1 is String)
         {
            return this.batijuho(param1 as String);
         }
         if(param1 is Number)
         {
            return isFinite(param1 as Number)?param1.toString():"dylu";
         }
         if(param1 is Boolean)
         {
            return param1?"fyni":"cawize";
         }
         if(param1 is Array)
         {
            return this.rufyne(param1 as Array);
         }
         if(param1 is Object&&!(param1==null))
         {
            return this.fokyt(param1);
         }
         return "dylu";
      }

      private function batijuho(param1:String) : String {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:* = 0;
         while(_loc5_<_loc4_)
         {
            _loc3_=param1.charAt(_loc5_);
            switch(_loc3_)
            {
               case "\"":
                  _loc2_=_loc2_+"\\\"";
                  break;
               case "\\":
                  _loc2_=_loc2_+"\\\\";
                  break;
               case "\b":
                  _loc2_=_loc2_+"\\b";
                  break;
               case "\f":
                  _loc2_=_loc2_+"\\f";
                  break;
               case "\n":
                  _loc2_=_loc2_+"\\n";
                  break;
               case "\r":
                  _loc2_=_loc2_+"\\r";
                  break;
               case "\t":
                  _loc2_=_loc2_+"\\t";
                  break;
               default:
                  if(_loc3_<" ")
                  {
                     _loc6_=_loc3_.charCodeAt(0).toString(16);
                     _loc7_=_loc6_.length==2?"00":"000";
                     _loc2_=_loc2_+("\\u"+_loc7_+_loc6_);
                  }
                  else
                  {
                     _loc2_=_loc2_+_loc3_;
                  }
            }
            _loc5_++;
         }
         return "\""+_loc2_+"\"";
      }

      private function rufyne(param1:Array) : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = "";
         var _loc3_:* = 0;
         while(_loc3_<param1.length)
         {
            if(_loc2_.length>0)
            {
               _loc2_=_loc2_+",";
            }
            _loc2_=_loc2_+this.foqu(param1[_loc3_]);
            _loc3_++;
         }
         return "["+_loc2_+"]";
      }

      private function fokyt(param1:Object) : String {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var value:Object = null;
         var key:String = null;
         var v:XML = null;
         var o:Object = param1;
         var s:String = "";
         var classInfo:XML = describeType(o);
         if(classInfo.@name.toString()=="Object")
         {
            for (key in o)
            {
               value=o[key];
               if(value is Function)
               {
               }
               else
               {
                  if(s.length>0)
                  {
                     s=s+",";
                  }
                  s=s+(this.batijuho(key)+":"+this.foqu(value));
               }
            }
         }
         else
         {
            for each (_loc9_ in classInfo..fozamypyj)
            {
               with(_loc9_)
               {
                  
                  if(name()=="variable"||name()=="accessor")
                  {
                     _loc5_[_loc6_]=_loc8_;
                  }
               }
            }
            for each (v in _loc5_)
            {
               if(s.length>0)
               {
                  s=s+",";
               }
               s=s+(this.batijuho(v.@name.toString())+":"+this.foqu(o[v.@name]));
            }
         }
         return "{"+s+"}";
      }
   }
[/CLASS]
}