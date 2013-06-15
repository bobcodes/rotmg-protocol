package donaqyzas
{
   import buf.Dyn;
   import civinib.allOf;
   import wusepiboz.instanceOf;
   import civinib.not;
   import flash.display.DisplayObject;
   import flash.utils.Dictionary;
   import dyca.Mes;
   import hunavefeg.Depyrew;
   import hunavefeg.Ryt;
   import hunavefeg.Vupyga;
   import hunavefeg.Hyne;


   public class Cinyb extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cinyb(param1:Hyne) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.vybility=param1.difas;
         this.nyti=param1.jok(this);
         this.bowetyg(instanceOf(Class),this.wywa);
         this.bowetyg(suqiv,this.navusyjy);
         param1.wumeci.addEventListener(Ryt.favupun,this.initialize,false,-100);
         return;
      }

      private static const suqiv:Dyn = allOf(instanceOf(Object),not(instanceOf(Class)),not(instanceOf(DisplayObject)));

      private const mohabahi:String = Rabymuse.create(Cinyb);

      private const reces:ObjectProcessor = new ObjectProcessor();

      private const mepiti:Dictionary = new Dictionary();

      private const zyhaguwiz:Array = [];

      private var vybility:Mes;

      private var nyti:Depyrew;

      private var bugagyt:Boolean;

      public function gaj(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.mepiti[param1])
         {
            this.mepiti[param1]=true;
            this.reces.gahowug(param1);
         }
         return;
      }

      public function bowetyg(param1:Dyn, param2:Function) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.reces.cuvanud(param1,param2);
         return;
      }

      public function toString() : String {
         return this.mohabahi;
      }

      private function initialize(param1:Ryt) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.bugagyt)
         {
            this.bugagyt=true;
            this.wyhimyt();
         }
         return;
      }

      private function wywa(param1:Class) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.bugagyt)
         {
            this.nyti.debug("Already initialized. Instantiating config class {0}",[param1]);
            this.rufeha(param1);
         }
         else
         {
            this.nyti.debug("Not yet initialized. Queuing config class {0}",[param1]);
            this.zyhaguwiz.push(param1);
         }
         return;
      }

      private function navusyjy(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.bugagyt)
         {
            this.nyti.debug("Already initialized. Injecting into config object {0}",[param1]);
            this.gahowug(param1);
         }
         else
         {
            this.nyti.debug("Not yet initialized. Queuing config object {0}",[param1]);
            this.zyhaguwiz.push(param1);
         }
         return;
      }

      private function wyhimyt() : void {
         var [OFS3]_loc4_:* = [/OFS]false;
         var [OFS5]_loc5_:* = [/OFS]true;
         var [OFS12]_loc1_:Object = [/OFS][OFS9]null[/OFS];
         for each (_loc1_ in this.[OFS17]zyhaguwiz[/OFS])
         {
            if([OFS33]_loc1_[/OFS][OFS36] is [/OFS][OFS34]Class[/OFS])
            {
               this.[OFS42]nyti[/OFS].[OFS52]debug[/OFS][OFS52]([/OFS][OFS45]"Now initializing. Instantiating config class {0}"[/OFS][OFS52],[/OFS][OFS50][[/OFS][OFS49]_loc1_[/OFS][OFS50]][/OFS][OFS52])[/OFS];
               this.[OFS61]rufeha[/OFS][OFS61]([/OFS][OFS57]_loc1_[/OFS][OFS60] as [/OFS][OFS58]Class[/OFS][OFS61])[/OFS];
            }
            else
            {
               this.[OFS70]nyti[/OFS].[OFS79]debug[/OFS][OFS79]([/OFS][OFS73]"Now initializing. Injecting into config object {0}"[/OFS][OFS79],[/OFS][OFS77][[/OFS][OFS76]_loc1_[/OFS][OFS77]][/OFS][OFS79])[/OFS];
               this.[OFS85]gahowug[/OFS][OFS85]([/OFS][OFS84]_loc1_[/OFS][OFS85])[/OFS];
            }
         }
         this.[OFS101]zyhaguwiz[/OFS].[OFS106]length[/OFS][OFS106]=[/OFS][OFS104]0[/OFS];
         [OFS108]return[/OFS];
      }

      private function rufeha(param1:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vupyga = this.vybility.getInstance(param1) as Vupyga;
         return;
      }

      private function gahowug(param1:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vybility.henihovuz(param1);
         var _loc2_:Vupyga = param1 as Vupyga;
         return;
      }
   }

}