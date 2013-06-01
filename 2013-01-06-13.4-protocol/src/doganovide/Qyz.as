package doganovide
{
[CLASS1593]   import __AS3__.vec.Vector;
   import flash.errors.IllegalOperationError;


   public class Qyz extends Object implements Nasurof, Cot
   {
      public function Qyz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      protected const magipa:Vector.<Class> = new Vector.<Class>();

      protected const sysymu:Vector.<Class> = new Vector.<Class>();

      protected const vagojelik:Vector.<Class> = new Vector.<Class>();

      protected var giro:Symyniwe;

      public function allOf(... rest) : Qyz {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tekiviwo(rest,this.magipa);
         return this;
      }

      public function anyOf(... rest) : Qyz {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tekiviwo(rest,this.sysymu);
         return this;
      }

      public function noneOf(... rest) : Qyz {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tekiviwo(rest,this.vagojelik);
         return this;
      }

      public function gosipavi() : Symyniwe {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.giro=(this.giro)||(this.movowupos());
      }

      public function bihefop() : Cot {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gosipavi();
         return this;
      }

      public function clone() : Qyz {
         return new Qyz().allOf(this.magipa).anyOf(this.sysymu).noneOf(this.vagojelik);
      }

      protected function movowupos() : Symyniwe {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.magipa.length==0&&this.sysymu.length==0&&this.vagojelik.length==0)
         {
            throw new Zon(Zon.pave);
         }
         else
         {
            return new Papy(this.magipa,this.sysymu,this.vagojelik);
         }
      }

      protected function tekiviwo(param1:Array, param2:Vector.<Class>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.gidema(param1,param2);
         return;
      }

      protected function rovi() : void {
         throw new IllegalOperationError("This TypeMatcher has been sealed and can no longer be configured");
      }

      protected function gidema(param1:Array, param2:Vector.<Class>) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Class = null;
         if(param1.length==1&&(param1[0] is Array||param1[0] is Vector.<Class>))
         {
            for each (_loc3_ in param1[0])
            {
               param2.push(_loc3_);
            }
         }
         else
         {
            for each (_loc3_ in param1)
            {
               param2.push(_loc3_);
            }
         }
         return;
      }
   }
[/CLASS]
}