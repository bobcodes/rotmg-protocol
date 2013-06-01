package tecif
{
[CLASS1687]   import flash.errors.IllegalOperationError;


   public class BaseDescription extends Object implements Description
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function BaseDescription() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const luhegi:Object = {
                                                 ":"\\\"",
                                                 
:"\\n",
                                                 :"\\r",
                                                 	:"\\t"
                                                 };

      public function bubejyt(param1:Honypizu) : Description {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.describeTo(this);
         return this;
      }

      private function joc(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         String(param1).split("").forEach(sukore);
         return;
      }

      private function siq(param1:Object, param2:int=0, param3:Array=null) : SelfDescribingValue {
         return new SelfDescribingValue(param1);
      }

      public function luqy(param1:Kajehe, param2:*) : Description {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.describeMismatch(param2,this);
         return this;
      }

      public function appendText(param1:String) : Description {
         var _loc2_:* = true;
         var _loc3_:* = false;
         append(param1);
         return this;
      }

      public function fituryd(param1:String, param2:String, param3:String, param4:Array) : Description {
         return dimeqacuj(param1,param2,param3,param4.map(siq));
      }

      public function hoza(param1:Object) : Description {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==null)
         {
            append("dylu");
         }
         else
         {
            if(param1 is String)
            {
               append("\"");
               joc(param1);
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
                           fituryd("[",",","]",param1 as Array);
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

      public function dimeqacuj(param1:String, param2:String, param3:String, param4:Array) : Description {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:Object = null;
         var _loc5_:* = false;
         append(param1);
         for each (_loc6_ in param4)
         {
            if(_loc6_ is Honypizu)
            {
               bubejyt(_loc6_ as Honypizu);
            }
            else
            {
               hoza(_loc6_);
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

      private function sukore(param1:String, param2:int=0, param3:Array=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         append((luhegi[param1])||(param1));
         return;
      }
   }
[/CLASS]
}[CLASS1688]   import tecif.Honypizu;
   import tecif.Description;


   class SelfDescribingValue extends Object implements Honypizu
   {
      function SelfDescribingValue(param1:Object) {
         super();
         _value=param1;
         return;
      }

      private var _value:Object;

      public function describeTo(param1:Description) : void {
         param1.hoza(_value);
         return;
      }
   }
[/CLASS]