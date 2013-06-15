package qymoho
{
   import tytojonib.Kyjefe;
   import micac.Ciqyl;
   import pusy.Mun;
   import wahyqise.Tysyc;
   import dicyl.Rezymafab;
   import fanij.Mitat;
   import com.company.assembleegameclient.objects.Player;
   import micac.Cake;
   import flash.display.DisplayObject;
   import loqaj.Kuk;
   import com.company.assembleegameclient.util.Lylyto;
   import com.company.assembleegameclient.map.Map;
   import kyjunys.Qajul;
   import ducojoryn.Zim;
   import pilage.Tope;
   import wahyqise.Bedac;


   public class Repoko extends Kyjefe
   {
      public function Repoko() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Vivezupig;

      public var fer:Ciqyl;

      public var hibufuryn:Mun;

      public var dugyno:Tysyc;

      public var hicip:Rezymafab;

      public var hibuc:Mitat;

      private var kivu:Boolean = false;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hibufuryn.addOnce(this.laroguv);
         this.view.dequle.add(this.qagirofer);
         this.view.riq.add(this.gym);
         this.hibufuryn.add(this.update);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.dequle.remove(this.qagirofer);
         this.view.riq.remove(this.gym);
         this.hibufuryn.remove(this.update);
         return;
      }

      private function laroguv(param1:Player) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Cake = this.dugyno.tocahedo[this.view.position];
         var _loc3_:int = param1.getPotionCount(_loc2_.objectId);
         this.view.raqy(_loc3_,_loc2_.nimosuzod(_loc3_),_loc2_.available,_loc2_.objectId);
         return;
      }

      private function update(param1:Player) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Cake = null;
         var _loc3_:* = 0;
         if((this.view.objectType==Tysyc.sanan||this.view.objectType==Tysyc.lenem)&&!this.kivu)
         {
            _loc2_=this.dugyno.hotyzycyc(this.view.objectType);
            _loc3_=param1.getPotionCount(_loc2_.objectId);
            this.view.raqy(_loc3_,_loc2_.nimosuzod(_loc3_),_loc2_.available);
         }
         return;
      }

      private function qagirofer(param1:DisplayObject) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Kuk = null;
         var _loc2_:Player = this.fer.qyhowo.map.player_;
         var _loc3_:* = Lylyto.porocif(param1,Kuk,Map,Qajul);
         if(_loc3_ is Map)
         {
            Zim.wisunoc.invDrop(_loc2_,Tysyc.nyh(this.view.objectType),this.view.objectType);
         }
         else
         {
            if(_loc3_ is Kuk)
            {
               _loc4_=_loc3_ as Kuk;
               if(_loc4_.qavowykez()==Tope.puheqah&&!(_loc4_.dirisisy.owner==_loc2_))
               {
                  Zim.wisunoc.invSwapPotion(_loc2_,_loc2_,Tysyc.nyh(this.view.objectType),this.view.objectType,_loc4_.dirisisy.owner,_loc4_.binaho,Tope.puheqah);
               }
            }
         }
         return;
      }

      private function gym() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bedac = null;
         var _loc1_:Cake = this.dugyno.tocahedo[this.view.position];
         if(_loc1_.available)
         {
            _loc2_=new Bedac(_loc1_.objectId,Bedac.kabu);
            this.hicip.dispatch(_loc2_);
         }
         return;
      }
   }

}