package bud
{
   import flash.utils.Dictionary;
   import dyca.Sybe;
   import flash.utils.getQualifiedClassName;


   public class Rekify extends Object
   {
      public function Rekify(param1:Boolean=true) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         if(param1)
         {
            this.ctor=new Ryrumoq();
         }
         return;
      }

      public var ctor:Pote;

      public var injectionPoints:Poq;

      public var doti:Wil;

      private var lycyd:Boolean;

      public function jonodekyf(param1:Array, param2:Array=null, param3:uint=2147483647, param4:Dictionary=null) : Rekify {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.ctor=new Pote(this.nehuc(param1,(param2)||([])),param3,param4);
         return this;
      }

      public function kate(param1:String, param2:Class, param3:String="", param4:Boolean=false, param5:Dictionary=null) : Rekify {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(this.lycyd)
         {
            throw new Sybe("Can\'t add injection point after post construct method");
         }
         else
         {
            this.silanito(new Qivysi(getQualifiedClassName(param2)+"|"+param3,param1,param4,param5));
            return this;
         }
      }

      public function dolaho(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647, param5:Boolean=false, param6:Dictionary=null) : Rekify {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(this.lycyd)
         {
            throw new Sybe("Can\'t add injection point after post construct method");
         }
         else
         {
            this.silanito(new Nud(param1,this.nehuc(param2,(param3)||([])),Math.min(param4,param2.length),param5,param6));
            return this;
         }
      }

      public function bonov(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647) : Rekify {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.lycyd=true;
         this.silanito(new Cys(param1,this.nehuc(param2,(param3)||([])),Math.min(param4,param2.length),0));
         return this;
      }

      public function qokote(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647) : Rekify {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Wil = new Wil(param1,this.nehuc(param2,(param3)||([])),Math.min(param4,param2.length),0);
         if(this.doti)
         {
            this.doti.last.next=_loc5_;
            this.doti.last=_loc5_;
         }
         else
         {
            this.doti=_loc5_;
            this.doti.last=_loc5_;
         }
         return this;
      }

      public function silanito(param1:Poq) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.injectionPoints)
         {
            this.injectionPoints.last.next=param1;
            this.injectionPoints.last=param1;
         }
         else
         {
            this.injectionPoints=param1;
            this.injectionPoints.last=param1;
         }
         return;
      }

      private function nehuc(param1:Array, param2:Array) : Array {
         var [OFS2]_loc5_:* = [/OFS]true;
         var [OFS4]_loc6_:* = [/OFS]false;
         var [OFS18]_loc3_:Array = [/OFS][OFS13]new [/OFS][OFS13]Array[/OFS][OFS13]([/OFS][OFS10]param1[/OFS].[OFS11]length[/OFS][OFS13])[/OFS];
         var [OFS23]_loc4_:int = [/OFS][OFS19]_loc3_[/OFS].[OFS20]length[/OFS];
         while([OFS70]_loc4_[/OFS][OFS74]--[/OFS])
         {
            [OFS30]_loc3_[/OFS][[OFS31]_loc4_[/OFS]][OFS67]=[/OFS][OFS42]getQualifiedClassName[/OFS][OFS42]([/OFS][OFS36]param1[/OFS][[OFS37]_loc4_[/OFS]][OFS42])[/OFS][OFS49]+[/OFS][OFS46]"|"[/OFS][OFS66]+[/OFS](([OFS50]param2[/OFS][[OFS51]_loc4_[/OFS]])||([OFS63]""[/OFS]));
         }
         [OFS81]return [/OFS][OFS80]_loc3_[/OFS];
      }
   }

}