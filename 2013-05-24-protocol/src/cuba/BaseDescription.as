package cuba
{
   import flash.errors.IllegalOperationError;


   public class BaseDescription extends Object implements Description
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function BaseDescription() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const kuqikyfi:Object = {
                                                   ":"\\\"",
                                                   
:"\\n",
                                                   :"\\r",
                                                   	:"\\t"
                                                   };

      public function gebaz(param1:Jypipeqe) : Description {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.describeTo(this);
         return this;
      }

      private function cyrucimi(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         String(param1).split("").forEach(pozewokyn);
         return;
      }

      private function nezug(param1:Object, param2:int=0, param3:Array=null) : SelfDescribingValue {
         return new SelfDescribingValue(param1);
      }

      public function wim(param1:Waha, param2:*) : Description {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.describeMismatch(param2,this);
         return this;
      }

      public function appendText(param1:String) : Description {
         var _loc2_:* = false;
         var _loc3_:* = true;
         append(param1);
         return this;
      }

      public function zuducuvub(param1:String, param2:String, param3:String, param4:Array) : Description {
         return jali(param1,param2,param3,param4.map(nezug));
      }

      public function gev(param1:Object) : Description {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==null)
         {
            append("libydelal");
         }
         else
         {
            if(param1 is String)
            {
               append("\"");
               cyrucimi(param1);
               append("\"");
            }
            else
            {
               if(param1 is Number)
               {
                  append("<");
                  append(param1);
                  append(">");
               }
               else
               {
                  if(param1 is int)
                  {
                     append("<");
                     append(param1);
                     append(">");
                  }
                  else
                  {
                     if(param1 is uint)
                     {
                        append("<");
                        append(param1);
                        append(">");
                     }
                     else
                     {
                        if(param1 is Array)
                        {
                           zuducuvub("[",",","]",param1 as Array);
                        }
                        else
                        {
                           if(param1 is XML)
                           {
                              append(XML(param1).toXMLString());
                           }
                           else
                           {
                              append("<");
                              append(param1);
                              append(">");
                           }
                        }
                     }
                  }
               }
            }
         }
         return this;
      }

      public function jali(param1:String, param2:String, param3:String, param4:Array) : Description {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:Object = null;
         var _loc5_:* = false;
         append(param1);
         for each (_loc6_ in param4)
         {
            if(_loc6_ is Jypipeqe)
            {
               gebaz(_loc6_ as Jypipeqe);
            }
            else
            {
               gev(_loc6_);
            }
            _loc5_=true;
         }
         append(param3);
         return this;
      }

      protected function append(param1:Object) : void {
         throw new IllegalOperationError("BaseDescription#append is abstract and must be overriden by a subclass");
      }

      public function toString() : String {
         throw new IllegalOperationError("BaseDescription#toString is abstract and must be overriden by a subclass");
      }

      private function pozewokyn(param1:String, param2:int=0, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         append((kuqikyfi[param1])||(param1));
         return;
      }
   }

}   import cuba.Jypipeqe;
   import cuba.Description;


   class SelfDescribingValue extends Object implements Jypipeqe
   {
      function SelfDescribingValue(param1:Object) {
         super();
         _value=param1;
         return;
      }

      private var _value:Object;

      public function describeTo(param1:Description) : void {
         param1.gev(_value);
         return;
      }
   }
