package fumyl
{
[CLASS97]   import tysenyzy.Zovisis;
   import tehakab.Supuvygac;
   import dylaqezo.Vusun;
   import zeky.Huwe;
   import kabam.rotmg.assets.services.Vohemija;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import com.company.assembleegameclient.util.Gugi;
   import kabam.rotmg.assets.model.Animation;


   public class Weholi extends Zovisis
   {
      public function Weholi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ClassDetailView;

      public var qoh:Supuvygac;

      public var jojun:Vusun;

      public var gek:Huwe;

      public var factory:Vohemija;

      private const pikyremo:Object = new Object();

      private var character:Cusifyha;

      private var zupihyv:Copaqufiv;

      private const pete:Timer = new Timer(250,1);

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.character=this.qoh.docew();
         this.pete.addEventListener(TimerEvent.TIMER,this.fahanyc);
         this.gek.add(this.zobyh);
         this.jyryfati();
         this.zobyh();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gek.remove(this.zobyh);
         this.pete.removeEventListener(TimerEvent.TIMER,this.fahanyc);
         this.view.wujomyg(null);
         this.cazywu();
         return;
      }

      private function jyryfati() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = this.jojun.guritejyp.bukiga(this.character.id);
         var _loc2_:int = Gugi.numStars(_loc1_);
         this.view.polaget(this.character.name,this.character.description,_loc2_,this.jojun.guritejyp.bestLevel(this.character.id),_loc1_);
         var _loc3_:int = Gugi.nextStarFame(_loc1_,0);
         this.view.kosutahab(this.character.name,_loc3_);
         return;
      }

      private function zobyh(param1:Copaqufiv=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.zupihyv=param1=(param1)||(this.character.pikyremo.nina());
         this.pete.start();
         return;
      }

      private function fahanyc(param1:TimerEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Animation = this.pikyremo[this.zupihyv.id]=(this.pikyremo[this.zupihyv.id])||(this.factory.zefis(this.zupihyv.jaqyb,200));
         this.view.wujomyg(_loc2_);
         return;
      }

      private function cazywu() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:String = null;
         var _loc2_:Animation = null;
         for (_loc1_ in this.pikyremo)
         {
            _loc2_=this.pikyremo[_loc1_];
            _loc2_.dispose();
            delete this.pikyremo[[_loc1_]];
         }
         return;
      }
   }
[/CLASS]
}