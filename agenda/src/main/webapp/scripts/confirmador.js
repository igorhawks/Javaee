/**
 * Confirmação de exclusão de um contato
 * @author Professor Igor Silva
 */

 
 function confirmar(idcon){
	let resposta = confirm("Confirma a exclusão deste contato?")
	if(resposta===true){
		//alert(idcon)
		window.location.href = "delete?idcon=" + idcon;
	}
 }
 