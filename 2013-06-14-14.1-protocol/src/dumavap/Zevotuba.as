package dumavap
{
   import __AS3__.vec.Vector;
   import flash.errors.IllegalOperationError;


   public class Zevotuba extends Object implements Lasudyd, Myz
   {
      public function Zevotuba() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      protected const hokup:Vector.<Class> = new Vector.<Class>();

      protected const fibup:Vector.<Class> = new Vector.<Class>();

      protected const kypetuze:Vector.<Class> = new Vector.<Class>();

      protected var kekeroso:Kowah;

      public function allOf(... rest) : Zevotuba {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.viroto(rest,this.hokup);
         return this;
      }

      public function anyOf(... rest) : Zevotuba {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.viroto(rest,this.fibup);
         return this;
      }

      public function noneOf(... rest) : Zevotuba {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.viroto(rest,this.kypetuze);
         return this;
      }

      public function lifinil() : Kowah {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.kekeroso=(this.kekeroso)||(this.felifusow());
      }

      public function wuqufiz() : Myz {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lifinil();
         return this;
      }

      public function clone() : Zevotuba {
         return new Zevotuba().allOf(this.hokup).anyOf(this.fibup).noneOf(this.kypetuze);
      }

      protected function felifusow() : Kowah {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.hokup.length==0&&this.fibup.length==0&&this.kypetuze.length==0)
         {
            throw new Necuvyfuf(Necuvyfuf.cizej);
         }
         else
         {
            return new Gyfukiw(this.hokup,this.fibup,this.kypetuze);
         }
      }

      protected function viroto(param1:Array, param2:Vector.<Class>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.telaqyc(param1,param2);
         return;
      }

      protected function samynaru() : void {
         throw new IllegalOperationError("This TypeMatcher has been sealed and can no longer be configured");
      }

      protected function telaqyc(param1:Array, param2:Vector.<Class>) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Class = null;
         if(param1.length==1&&(param1[0] is Array||param1[0] is Vector.<Class>))
         {
            for each (_loc3_ in param1[0])
            {
               param2.push(_loc3_);
            }
            return;
         }
         for each (_loc3_ in param1)
         {
            param2.push(_loc3_);
         }
         return;
      }
   }

}