package buf
{
   import flash.errors.IllegalOperationError;


   public class BaseDescription extends Object implements Description
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function BaseDescription() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const nuwevywoj:Object = {
                                                    ":"\\\"",
                                                    
:"\\n",
                                                    :"\\r",
                                                    	:"\\t"
                                                    };

      public function nozyf(param1:Rysamev) : Description {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.describeTo(this);
         return this;
      }

      private function gucycu(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         String(param1).split("").forEach(foga);
         return;
      }

      private function hevu(param1:Object, param2:int=0, param3:Array=null) : SelfDescribingValue {
         return new SelfDescribingValue(param1);
      }

      public function fojuger(param1:Dyn, param2:*) : Description {
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

      public function gotog(param1:String, param2:String, param3:String, param4:Array) : Description {
         return zelod(param1,param2,param3,param4.map(hevu));
      }

      public function siw(param1:Object) : Description {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==null)
         {
            append("Sin");
         }
         else
         {
            if(param1 is String)
            {
               append("\"");
               gucycu(param1);
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
                           gotog("[",",","]",param1 as Array);
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

      public function zelod(param1:String, param2:String, param3:String, param4:Array) : Description {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:Object = null;
         var _loc5_:* = false;
         append(param1);
         for each (_loc6_ in param4)
         {
            if(_loc6_ is Rysamev)
            {
               nozyf(_loc6_ as Rysamev);
            }
            else
            {
               siw(_loc6_);
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

      private function foga(param1:String, param2:int=0, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         append((nuwevywoj[param1])||(param1));
         return;
      }
   }

}   import buf.Rysamev;
   import buf.Description;


   class SelfDescribingValue extends Object implements Rysamev
   {
      function SelfDescribingValue(param1:Object) {
         super();
         _value=param1;
         return;
      }

      private var _value:Object;

      public function describeTo(param1:Description) : void {
         param1.siw(_value);
         return;
      }
   }
