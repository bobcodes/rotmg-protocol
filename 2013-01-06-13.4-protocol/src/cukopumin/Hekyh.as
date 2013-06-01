package cukopumin
{
[CLASS1335]   import pogefeqeh.Wahovy;
   import tapago.SsInternal;
   import bus.Nygeles;
   import keved.Nenehodo;
   import flash.utils.getQualifiedClassName;
   import flash.utils.Dictionary;


   public class Hekyh extends Gak
   {
      public function Hekyh(param1:String, param2:String, param3:Boolean, param4:Dictionary) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.pejoco=param2;
         this.tegefar=param1;
         this.sicaweju=param3;
         this.injectParameters=param4;
         return;
      }

      private var pejoco:String;

      private var tegefar:String;

      private var sicaweju:Boolean;

      override public function applyInjection(param1:Object, param2:Class, param3:Wahovy) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Nygeles = param3.SsInternal::hukos(this.tegefar);
         if(!_loc4_)
         {
            if(this.sicaweju)
            {
               return;
            }
            throw new Nenehodo("Injector is missing a mapping to handle injection into property \""+this.pejoco+"\" of object \""+param1+"\" with type \""+getQualifiedClassName(param2)+"\". Target dependency: \""+this.tegefar+"\"");
         }
         else
         {
            param1[this.pejoco]=_loc4_.apply(param2,param3,injectParameters);
            return;
         }
      }
   }
[/CLASS]
}