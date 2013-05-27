package zyjopary
{
   import gag.Fijarih;
   import negirilu.Fuzi;
   import wegyluke.Hez;
   import lijite.Sapes;
   import byzany.Qopel;
   import lijite.Nyzena;
   import __AS3__.vec.Vector;
   import lijite.Rifun;
   import nas.ErrorDialog;


   public class Lesefi extends Fijarih implements Refegoru
   {
      public function Lesefi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var client:Fuzi;

      public var naval:Hez;

      public var model:Sapes;

      public var popa:Qopel;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/app/globalNews",{language:this.popa.liw()});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.gugam(param2);
         }
         else
         {
            this.sanah(param2);
         }
         syjavimu(param1,param2);
         return;
      }

      private function gugam(param1:String) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Object = null;
         var _loc2_:Vector.<Nyzena> = new Vector.<Nyzena>();
         var _loc3_:Object = JSON.parse(param1);
         for each (_loc4_ in _loc3_)
         {
            _loc2_.push(this.zemu(_loc4_));
         }
         this.model.coc(_loc2_);
         return;
      }

      private function zemu(param1:Object) : Nyzena {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nyzena = null;
         _loc2_=new Nyzena();
         _loc2_.jeki=param1.title;
         _loc2_.cewywume=param1.image;
         _loc2_.linkDetail=param1.linkDetail;
         _loc2_.gunavuw=Number(param1.startTime);
         _loc2_.pacewalo=Number(param1.endTime);
         _loc2_.linkType=Rifun.parse(param1.linkType);
         _loc2_.jycutozyt=String(param1.platform).split(",");
         _loc2_.priority=uint(param1.priority);
         _loc2_.slot=uint(param1.slot);
         return _loc2_;
      }

      private function sanah(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.naval.dispatch(new ErrorDialog("Unable to get news data."));
         return;
      }
   }

}