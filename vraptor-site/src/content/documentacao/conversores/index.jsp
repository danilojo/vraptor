
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/header.jsp">
	<jsp:param name="extras" value='
		<link href="../includes/css/java.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="../includes/css/xml2html.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="../includes/css/style.css" rel="stylesheet" type="text/css" media="screen" />
	'/>
</jsp:include><div id="contentWrap">
    	<div id="contentDocumentacao">
        	<h2><span>documentação</span></h2>
            <h3>documentação toda em português, configuração, migração e utilização.</h3>
            
            <div id="subMenuDoc">
            	<img id="positionTop" src="../includes/images/subMenuTop-trans.png" />
                <img id="positionBottom" src="../includes/images/subMenuBottom-trans.png" />
            	<ol type="1">
									<li><a class="link_toc" href="../../documentacao/vraptor3-guia-de-1-minuto/">1. VRaptor3 - Guia de 1 minuto</a></li>
		
									<li><a class="link_toc" href="../../documentacao/vraptor3-o-guia-inicial-de-10-minutos/">2. VRaptor3 - o guia inicial de 10 minutos</a></li>
		
									<li><a class="link_toc" href="../../documentacao/resources-rest/">3. Resources-Rest</a></li>
		
									<li><a class="link_toc" href="../../documentacao/componentes/">4. Componentes</a></li>
		
									<li><a class="link_toc" href="../../documentacao/conversores/">5. Conversores</a></li>
		
									<li><a class="link_toc" href="../../documentacao/interceptadores/">6. Interceptadores</a></li>
		
									<li><a class="link_toc" href="../../documentacao/validacao/">7. Validação</a></li>
		
									<li><a class="link_toc" href="../../documentacao/view-e-ajax/">8. View e Ajax</a></li>
		
									<li><a class="link_toc" href="../../documentacao/injecao-de-dependencias/">9. Injeção de dependências</a></li>
		
									<li><a class="link_toc" href="../../documentacao/downloading/">10. Downloading</a></li>
		
									<li><a class="link_toc" href="../../documentacao/componentes-utilitarios-opcionais/">11. Componentes Utilitários Opcionais</a></li>
		
									<li><a class="link_toc" href="../../documentacao/configuracoes-avancadas-sobrescrevendo-as-convencoes-e-comportamento-do-vraptor/">12. Configurações avancadas: sobrescrevendo as convenções e comportamento do VRaptor</a></li>
		
									<li><a class="link_toc" href="../../documentacao/spring-joda-time-hibernate-e-google-app-engine/">13. Spring, Joda Time, Hibernate e Google App Engine</a></li>
		
									<li><a class="link_toc" href="../../documentacao/testando-componentes-e-controllers/">14. Testando componentes e controllers</a></li>
		
									<li><a class="link_toc" href="../../documentacao/changelog/">15. ChangeLog</a></li>
		
									<li><a class="link_toc" href="../../documentacao/migrando-do-vraptor2-para-o-vraptor3/">16. Migrando do VRaptor2 para o VRaptor3</a></li>
		
                </ol>
            </div><!-- submenu-->
                        
            <div id="textoCapitulo">
	
		<h2 class="chapter">Conversores</h2>

		


<h3 class="section">Padrão</h3>
	    	<span class="paragraph">Por padr&atilde;o o VRaptor j&aacute; registra diversos conversores para o seu uso no dia a dia.</span>
		

<h3 class="section">Tipos primitivos</h3>
	    	<span class="paragraph">Todos os tipos primitivos (int, long etc) s&atilde;o suportados.</span>
	    	<span class="paragraph">Caso o parametro da requisi&ccedil;&atilde;o seja nulo ou a string vazia, vari&aacute;veis de tipo primitivo
ser&atilde;o alterados para o valor padr&atilde;o como se essa vari&aacute;vel fosse uma vari&aacute;vel membro, isto &eacute;:</span>
	    	<ul class="list"><li><span class="paragraph">boolean - false</span></li><li><span class="paragraph">short, int, long, double, float, byte - 0</span></li><li><span class="paragraph">char - caracter de c&oacute;digo 0</span></li></ul>
		

<h3 class="section">Wrappers de tipos primitivos</h3>
	    	<span class="paragraph">Todos os wrappers dos tipos primitivos (Integer, Long, Character, Boolean etc) s&atilde;o suportados.</span>
		

<h3 class="section">Enum</h3>
	    	<span class="paragraph">Todas as enumera&ccedil;&otilde;es s&atilde;o suportadas atrav&eacute;s do nome do elemento ou de seu ordinal.
No exemplo a seguir, tanto o valor 1 como o valor DEBITO s&atilde;o traduzidos para Tipo.DEBITO:</span>
	    	<div class="java"><code class="java">
<span class="java4">public enum </span><span class="java10">Tipo </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java10">CREDITO, DEBITO<br />
</span><span class="java8">}</span></code></div>
		

<h3 class="section">BigInteger e BigDecimal</h3>
	    	<span class="paragraph">Ambos s&atilde;o suportados utilizando o padr&atilde;o de localiza&ccedil;&atilde;o da virtual machine que serve a sua aplica&ccedil;&atilde;o.
Para criar suporte a n&uacute;meros decimais baseados no locale do usu&aacute;rio, basta olhar o funcionamento da classe LocaleBasedCalendarConverter.</span>
		

<h3 class="section">Calendar e Date</h3>
	    	<span class="paragraph">LocaleBasedCalendarConverter e LocaleBasedDateConverter utilizam o locale do usu&aacute;rio,
definido seguindo o padr&atilde;o do jstl para entender a formata&ccedil;&atilde;o que foi utilizada no par&acirc;metro.</span>
	    	<span class="paragraph">Por exemplo, se o locale &eacute; pt-br, o formato "18/09/1981" representa 18 de setembro de 1981
enquanto para o locale en, o formato "09/18/1981" representa a mesma data.</span>
		

<h3 class="section">LocalDate e LocalTime do joda-time</h3>
	    	<span class="paragraph">Existem conversores para esses dois tipos no VRaptor e eles s&oacute; ser&atilde;o carregados se voc&ecirc; tiver
o joda-time.jar no seu classpath</span>
		

<h3 class="section">Interface</h3>
	    	<span class="paragraph">Todos os conversores devem implementar a interface Converter do vraptor.
A classe concreta definir&aacute; o tipo que ela &eacute; capaz de converter, e ser&aacute; invocada
com o valor do par&acirc;metro do request, o tipo alvo e um bundle com as mensagens de
internacionaliza&ccedil;&atilde;o para que voc&ecirc; possa retornar uma ConversionException no caso
de algum erro de convers&atilde;o.</span>
	    	<div class="java"><code class="java">
<span class="java4">public interface </span><span class="java10">Converter&lt;T&gt; </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java10">T convert</span><span class="java8">(</span><span class="java10">String value, Class&lt;? </span><span class="java4">extends </span><span class="java10">T&gt; type, ResourceBundle bundle</span><span class="java8">)</span><span class="java10">;<br />
</span><span class="java8">}</span></code></div>
	    	<span class="paragraph">Al&eacute;m disso, seu conversor deve ser anotado dizendo agora para o VRaptor (e n&atilde;o mais para o compilador
java) qual o tipo que seu conversor &eacute; capaz de converter, para isso utilize a anota&ccedil;&atilde;o @Convert:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Convert</span><span class="java8">(</span><span class="java10">Long.</span><span class="java4">class</span><span class="java8">)<br />
</span><span class="java4">public class </span><span class="java10">LongConverter </span><span class="java4">implements </span><span class="java10">Converter&lt;Long&gt; </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">// ...<br />
</span><span class="java8">}</span></code></div>
	    	<span class="paragraph">Por fim, lembre-se de dizer se seu conversor pode ser instanciado em um escopo de Application, Session
ou Request, assim como recursos e componentes quaisquer do VRaptor.
Por exemplo, um conversor que n&atilde;o requer nenhuma informa&ccedil;&atilde;o do usu&aacute;rio logado pode ser registrado no escopo
de Application e instanciado uma &uacute;nica vez:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Convert</span><span class="java8">(</span><span class="java10">Long.</span><span class="java4">class</span><span class="java8">)<br />
</span><span class="java16">@ApplicationScoped<br />
</span><span class="java4">public class </span><span class="java10">LongConverter </span><span class="java4">implements </span><span class="java10">Converter&lt;Long&gt; </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp; </span><span class="java3">// ...<br />
</span><span class="java8">}</span></code></div>
	    	<span class="paragraph">A seguir, a implementa&ccedil;&atilde;o de LongConverter mostra como tudo isso pode ser utilizado de maneira bem simples:</span>
	    	<div class="java"><code class="java">
<span class="java16">@Convert</span><span class="java8">(</span><span class="java10">Long.</span><span class="java4">class</span><span class="java8">)<br />
</span><span class="java16">@ApplicationScoped<br />
</span><span class="java4">public class </span><span class="java10">LongConverter </span><span class="java4">implements </span><span class="java10">Converter&lt;Long&gt; </span><span class="java8">{<br />
<br />
&nbsp;&nbsp;&nbsp; </span><span class="java4">public </span><span class="java10">Long convert</span><span class="java8">(</span><span class="java10">String value, Class&lt;? </span><span class="java4">extends </span><span class="java10">Long&gt; type, ResourceBundle bundle</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">if </span><span class="java8">(</span><span class="java10">value == </span><span class="java4">null </span><span class="java10">|| value.equals</span><span class="java8">(</span><span class="java5">&#34;&#34;</span><span class="java8">)) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">return null</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">try </span><span class="java8">{<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">return </span><span class="java10">Long.valueOf</span><span class="java8">(</span><span class="java10">value</span><span class="java8">)</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java8">} </span><span class="java4">catch </span><span class="java8">(</span><span class="java10">NumberFormatException e</span><span class="java8">) {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java4">throw new </span><span class="java10">ConversionError</span><span class="java8">(</span><span class="java10">MessageFormat<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .format</span><span class="java8">(</span><span class="java10">bundle.getString</span><span class="java8">(</span><span class="java5">&#34;is_not_a_valid_integer&#34;</span><span class="java8">)</span><span class="java10">, value</span><span class="java8">))</span><span class="java10">;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="java8">}<br />
&nbsp;&nbsp;&nbsp; }<br />
<br />
}</span></code></div>
		

<h3 class="section">Registrando um novo conversor</h3>
	    	<span class="paragraph">N&atilde;o &eacute; necess&aacute;ria nenhuma configura&ccedil;&atilde;o al&eacute;m do @Convert e implementar a interface Converter
para que o conversor seja registrado no Container do VRaptor.</span>
		

</div><!-- content -->
            
        </div><!-- content cnt -->
    </div><!-- content wrap-->
    
<%@include file="/footer.jsp" %>