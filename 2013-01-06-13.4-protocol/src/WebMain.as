package 
{
[CLASS0]   import flash.display.Sprite;
   import bikyvym.Cedymynet;
   import flash.events.Event;
   import com.company.assembleegameclient.util.Pukyqy;
   import flash.display.StageScaleMode;
   import bup.Bazyporo;
   import com.company.assembleegameclient.parameters.Parameters;
   import jutesesel.Qibigagal;
   import flash.display.LoaderInfo;
   import com.company.assembleegameclient.util.Vureriju;
   import tysenyzy.Wisohil;
   import malymoh.Momufuri;
   import hohigecos.Podo;
   import gumuqijuz.Hocojicuh;
   import dibale.Gajyqu;
   import kabam.rotmg.assets.Noguzijiw;
   import keseq.Tuvenun;
   import dilujyni.Pepowy;
   import dilujyni.Nuk;
   import sywowowi.Majaz;
   import nites.Had;
   import tirygem.Dotyqude;
   import kidy.Hyg;
   import havoru.Tesyfom;
   import jutesesel.Tow;
   import dilujyni.Womohasy;
   import natafoz.Kynylosut;
   import bihybesuk.Hed;
   import wor.Syheq;
   import goquvera.Divetypy;
   import vehesaj.Nyz;
   import tydoha.Gybakeqyf;
   import qurapeli.Gygujofuv;
   import selohitih.Jucyta;
   import fak.Jyw;
   import viky.Qewoha;
   import jogihyj.Jag;
   import sopijyl.Weloqab;
   import voka.Jykoh;
   import peve.Qyqihisiq;
   import fubo.Jizyzy;
   import mudygewe.Wyvikeq;
   import bikyvym.Werofo;
   import flash.system.Capabilities;


   public class WebMain extends Sprite
   {
      public function WebMain() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         if(stage)
         {
            this.setup();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         return;
      }

      protected var context:Cedymynet;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.setup();
         return;
      }

      private function setup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyga();
         this.gume();
         new Pukyqy().load();
         stage.scaleMode=StageScaleMode.EXACT_FIT;
         this.context.viqelo.getInstance(Bazyporo).dispatch();
         this.ladycyw();
         return;
      }

      private function dyga() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Parameters.root=stage.root;
         return;
      }

      private function gume() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.context=new Qibigagal();
         this.context.viqelo.map(LoaderInfo).zoru(root.stage.root.loaderInfo);
         var _loc1_:Vureriju = new Vureriju(this);
         this.context.viqelo.map(Vureriju).zoru(_loc1_);
         this.context.extend(Wisohil).extend(Momufuri).configure(Podo).configure(Hocojicuh).configure(Gajyqu).configure(Noguzijiw).configure(Tuvenun).configure(Pepowy).configure(Nuk).configure(Majaz).configure(Had).configure(Dotyqude).configure(Hyg).configure(Tesyfom).configure(Tow).configure(Womohasy).configure(Kynylosut).configure(Hed).configure(Syheq).configure(Divetypy).configure(Nyz).configure(Gybakeqyf).configure(Gygujofuv).configure(Jucyta).configure(Jyw).configure(Qewoha).configure(Jag).configure(Weloqab).configure(Jykoh).configure(Qyqihisiq).configure(Jizyzy).configure(Wyvikeq).configure(this);
         this.context.zabyz=Werofo.DEBUG;
         return;
      }

      private function ladycyw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(Capabilities.playerType=="Desktop")
         {
            Parameters.data_.fullscreenMode=false;
            Parameters.save();
         }
         return;
      }
   }
[/CLASS]
}