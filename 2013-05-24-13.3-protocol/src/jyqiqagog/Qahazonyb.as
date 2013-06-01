package jyqiqagog
{
   import kyco.Nun;
   import veb.SsInternal;
   import bolihe.Cuwively;
   import niquhuwuj.Qiduqez;
   import flash.utils.getQualifiedClassName;
   import flash.utils.Dictionary;


   public class Qahazonyb extends Cotaras
   {
      public function Qahazonyb(param1:String, param2:String, param3:Boolean, param4:Dictionary) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.rohu=param2;
         this.sasehuqy=param1;
         this.sohuw=param3;
         this.injectUserConfig=param4;
         return;
      }

      private var rohu:String;

      private var sasehuqy:String;

      private var sohuw:Boolean;

      override public function applyInjection(param1:Object, param2:Class, param3:Nun) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Cuwively = param3.SsInternal::bazesujeq(this.sasehuqy);
         if(!_loc4_)
         {
            if(this.sohuw)
            {
               return;
            }
            throw new Qiduqez("Injector is missing a mapping to handle injection into property \""+this.rohu+"\" of object \""+param1+"\" with type \""+getQualifiedClassName(param2)+"\". Target dependency: \""+this.sasehuqy+"\"");
         }
         else
         {
            param1[this.rohu]=_loc4_.apply(param2,param3,injectUserConfig);
            return;
         }
      }
   }

}