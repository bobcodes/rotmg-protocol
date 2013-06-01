package kisej
{
[CLASS614]   import flash.utils.Proxy;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;


   public class Tegisyse extends Object
   {
      public function Tegisyse() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function gemydejoc(param1:Object) : Class {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1 is Proxy||param1 is Number||param1 is XML||param1 is XMLList)
         {
            return Class(getDefinitionByName(getQualifiedClassName(param1)));
         }
         return param1.constructor;
      }

      public function losequgem(param1:*, param2:Boolean=false) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         if(param1 is String)
         {
            _loc3_=param1;
            if(!param2&&_loc3_.indexOf("::")==-1)
            {
               _loc4_=_loc3_.lastIndexOf(".");
               if(_loc4_==-1)
               {
                  return _loc3_;
               }
               return _loc3_.substring(0,_loc4_)+"::"+_loc3_.substring(_loc4_+1);
            }
         }
         else
         {
            _loc3_=getQualifiedClassName(param1);
         }
         return param2?_loc3_.replace("::","."):_loc3_;
      }
   }
[/CLASS]
}