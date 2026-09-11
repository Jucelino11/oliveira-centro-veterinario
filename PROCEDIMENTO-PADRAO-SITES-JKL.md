# Procedimento Operacional Padrão (POP / Playbook) · JKL Solutions
## Padrão de Engenharia, SEO, Segurança e DNA para Websites de Clientes

> **Versão:** 1.0.0 · Setembro/2026  
> **Desenvolvido por:** [JKL Solutions](https://jklsolutions.com.br)  
> **Objetivo:** Estabelecer uma diretriz técnica unificada, inviolável e de alto padrão para todos os novos sites desenvolvidos pela JKL Solutions, desde o staging até o pós-lançamento.

---

## 📑 Sumário Executivo

1. [Padrão de Rodapé Oficial Luxury (3 Colunas)](#1-padrão-de-rodapé-oficial-luxury-3-colunas)
2. [Padrão de DNA JKL no Código-Fonte (4 Camadas Invisíveis)](#2-padrão-de-dna-jkl-no-código-fonte-4-camadas-invisíveis)
3. [Ambiente de Testes (Staging) vs. Produção Definitiva](#3-ambiente-de-testes-staging-vs-produção-definitiva)
4. [Estratégia Completa de SEO, Google Search Console e GEO](#4-estratégia-completa-de-seo-google-search-console-e-geo)
5. [Segurança e Blindagem (Cloudflare WAF, Headers e Senhas)](#5-segurança-e-blindagem-cloudflare-waf-headers-e-senhas)
6. [Checklist Final de Pré-Lançamento e Performance](#6-checklist-final-de-pré-lançamento-e-performance)

---

## 1. Padrão de Rodapé Oficial Luxury (3 Colunas)

O rodapé deve ser sempre dividido em **3 colunas equilibradas**, adaptando a cor primária (dourado, azul, verde, etc.) para a paleta da marca do cliente.

```
┌─────────────────────────┬─────────────────────────┬─────────────────────────┐
│       COLUNA 1          │        COLUNA 2         │        COLUNA 3         │
│  Identidade & Contato   │     Canais Oficiais     │      Assinatura JKL     │
├─────────────────────────┼─────────────────────────┼─────────────────────────┤
│ • Logo Oficial          │ • Título Dourado/Marca  │ • "Desenvolvido com     │
│ • Endereço + Rota Maps  │ • Ícones Redes Sociais  │   excelência por"       │
│ • Link WhatsApp Unificado│ • Slogan Centralizado   │ • Monograma SVG JKL     │
└─────────────────────────┴─────────────────────────┴─────────────────────────┘
```

### Regras Invioláveis do Rodapé:
1. **Coluna 1 (Identidade & Contato):**
   * **Logo:** Logo oficial da empresa em versão transparente.
   * **Endereço com Link GPS:** Texto do endereço em cinza (`text-zinc-400`), com link direto para a rota do Google Maps (`https://www.google.com/maps/search/?api=1&query=...`).
   * **"Como chegar ↗":** Texto discreto em cinza com underline, acendendo em branco no hover (`group-hover:text-white`).
   * **WhatsApp Unificado:** A tag `<a>` **deve englobar** a palavra *"WhatsApp:"* e o número juntos, garantindo que ambos acendam simultaneamente para branco no hover (`hover:text-white`).
2. **Coluna 2 (Canais Oficiais & Redes):**
   * Título em caixa alta com tracking expandido (`font-subbrand uppercase tracking-[0.2em] text-xs`).
   * Ícones de redes sociais (Agendamento/App, Instagram, Facebook, WhatsApp) com efeito de zoom suave (`hover:scale-110 transition-all`).
   * **Slogan da Empresa:** Sempre com `text-center block max-w-xs leading-relaxed` para que, ao quebrar no celular, permaneça **rigorosamente centralizado**.
3. **Coluna 3 (Assinatura Oficial JKL Solutions):**
   * Título: `"DESENVOLVIDO COM EXCELÊNCIA POR"`.
   * Monograma vetorial anatômico SVG oficial da JKL Solutions (J+K+L fusionado).
   * Link para `https://jklsolutions.com.br` com tracking de marca e folha de estilo `assinatura-rodape.css`.

---

## 2. Padrão de DNA JKL no Código-Fonte (4 Camadas Invisíveis)

Todo projeto entregue pela JKL Solutions deve conter as 4 camadas de assinatura técnica, invisíveis na tela do cliente:

### Camada 1: Banner ASCII Art Alinhado (Linha 1 do HTML)
Posicionado antes do `<!DOCTYPE html>`, sem quebras de coluna:

```html
<!--
=============================================================================
    ██╗ ██╗  ██╗██╗        ____        _       _   _                 
    ██║ ██║ ██╔╝██║       / ___|  ___ | |_   _| |_(_) ___  _ __  ___ 
    ██║ █████╔╝ ██║       \___ \ / _ \| | | | | __| |/ _ \| '_ \/ __|
 ██ ██║ ██╔═██╗ ██║        ___) | (_) | | |_| | |_| | (_) | | | \__ \
 █████║ ██║ ██║ ███████╗  |____/ \___/|_|\__,_|\__|_|\___/|_| |_|___/
 ╚════╝ ╚═╝ ╚═╝ ╚══════╝
=============================================================================
  ARQUITETURA & ENGENHARIA DIGITAL : JKL Solutions
  WEBSITE                          : https://jklsolutions.com.br
  DESENVOLVIMENTO & TECNOLOGIA     : JKL Solutions
  PROJETO                          : [NOME DO CLIENTE] Oficial
  INFRAESTRUTURA                   : Cloudflare Edge · HTML5 · Tailored UX
  AUTORIA & DIREITOS               : © 2026 JKL Solutions. Todos os direitos reservados.
=============================================================================
-->
```

### Camada 2: Metatags Semânticas de Autoria no `<head>`
```html
<!-- DNA & Autoria Técnica Oficial JKL Solutions -->
<meta name="author" content="JKL Solutions">
<meta name="designer" content="JKL Solutions - Engenharia de Software e Soluções Digitais">
<meta name="developer" content="JKL Solutions (https://jklsolutions.com.br)">
<meta name="generator" content="JKL Solutions Digital Engine">
```

### Camada 3: Easter Egg no Console do Desenvolvedor (`F12`)
Inserido no script do rodapé:
```javascript
// DNA JKL Solutions — Console Signature (DevTools F12)
console.log(
    "%c JKL %c Solutions %c Projetado e Desenvolvido por JKL Solutions • https://jklsolutions.com.br",
    "background: #000; color: #ccaf25; font-weight: bold; padding: 4px 8px; border-radius: 4px 0 0 4px; border: 1px solid #ccaf25; font-family: sans-serif;",
    "background: #ccaf25; color: #000; font-weight: bold; padding: 4px 8px; border-radius: 0 4px 4px 0; font-family: sans-serif;",
    "color: #a1a1aa; padding-left: 10px; font-family: monospace; font-size: 11px;"
);
```

### Camada 4: Selo Criptográfico de DNA no Final do Arquivo
```html
<!-- [DNA-SIGNATURE] JKL-SOLUTIONS-AUTH: SHA256-JKL-2026-[CLIENTE]-VERIFIED -->
```

---

## 3. Ambiente de Testes (Staging) vs. Produção Definitiva

> [!CAUTION]
> **Regra Anti-Vazamento:** Subdomínios de homologação sob o domínio `*.jklsolutions.com.br` NUNCA devem ser indexados por robôs de busca.

### Fase de Staging (Homologação com o Cliente):
1. **Robots Bloqueado:** No arquivo `robots.txt` do ambiente de testes ou via meta tag:
   ```html
   <meta name="robots" content="noindex, nofollow">
   ```
2. **Tag Canônica já apontando para o futuro domínio do cliente:**
   ```html
   <link rel="canonical" href="https://[dominiocliente.com.br]/">
   ```
3. **Fail-safe no JavaScript:**
   ```javascript
   if (window.location.hostname.includes('jklsolutions.com.br')) {
       // Opcional: redirecionar automaticamente quando o domínio oficial for ao ar
   }
   ```

### Conexão Automática GitHub ➔ Cloudflare (Regra Anti-Desconexão):

Para que o deploy seja **100% automático** (deu `git push`, subiu sozinho para o ar), a Cloudflare precisa estar autorizada no GitHub com permissão sobre o repositório.

#### Passo 1: Autorizar o Repositório no GitHub App da Cloudflare
1. No **GitHub**, clique na sua **foto de perfil** (canto superior direito) ➔ **Settings**.
2. No menu lateral esquerdo, vá em **Applications** (ou acesse direto `https://github.com/settings/installations`).
3. Clique em **Cloudflare Workers and Pages** (em *Installed GitHub Apps*).
4. Role a página até a seção **Repository access**:
   * **Recomendado:** Selecione **All repositories** *(assim todos os novos sites de clientes criados no futuro já nascem conectados e automáticos)*.
   * **Alternativa:** Selecione *Only select repositories*, clique no campo de busca e adicione o repositório do cliente (ex: `oliveira-centro-veterinario`).
5. Clique no botão verde: **Save**.

#### Passo 2: Conferência da Conexão no Painel da Cloudflare
1. Acesse: **[dash.cloudflare.com](https://dash.cloudflare.com)** ➔ **Compute** ➔ **Workers & Pages**.
2. Clique no projeto do cliente ➔ aba **Settings** ➔ menu lateral **Builds**.
3. No bloco **Git repository**, certifique-se de que:
   * O nome do repositório aparece ativo (ex: `Jucelino11/oliveira-centro-veterinario`).
   * **NÃO** deve existir o aviso azul: *"This project is disconnected from your Git account"*.
   * Caso o aviso apareça, basta clicar no botão **`Manage`** e autorizar.

#### Passo 3: Verificação Real de Deploy Automático
1. Realize qualquer commit no repositório local e envie:
   ```bash
   git push origin main
   ```
2. Na Cloudflare (aba **Deployments**), o build deve iniciar sozinho exibindo o título do commit (sem exibir *"Manually deployed"*).
3. Faça a **Verificação Real** na URL pública do site testando via HTTP antes de confirmar a entrega ao cliente.

### Virada de Chave para Produção (Go-Live):
1. Cadastrar os Custom Domains na Cloudflare:
   * `dominiocliente.com.br`
   * `www.dominiocliente.com.br`
2. **Remover Imediatamente o Custom Domain de staging** (`cliente.jklsolutions.com.br`) na Cloudflare.
3. Atualizar a meta tag para indexação plena:
   ```html
   <meta name="robots" content="index, follow, max-image-preview:large">
   ```

---

## 4. Estratégia Completa de SEO, Google Search Console e GEO

### 1. Arquivos Essenciais na Raiz:
* **`robots.txt`:**
  ```text
  User-agent: *
  Allow: /

  Sitemap: https://[dominiocliente.com.br]/sitemap.xml
  ```
* **`sitemap.xml`:** XML formatado com `<loc>`, `<lastmod>`, `<changefreq>` e `<priority>1.0</priority>`.

### 2. Metatags de Geolocalização (SEO Local / GEO):
```html
<!-- Metatags de Geolocalização -->
<meta name="geo.region" content="BR-SP">
<meta name="geo.placename" content="[Nome da Cidade]">
<meta name="geo.position" content="[LATITUDE];[LONGITUDE]">
<meta name="ICBM" content="[LATITUDE], [LONGITUDE]">
```

### 3. Rich Snippet Schema.org JSON-LD (Essencial para o Google):
Configurar `@context: "https://schema.org"` com `@type` específico (`LocalBusiness`, `BarberShop`, `Store`, etc.), contendo:
* Endereço físico completo (`PostalAddress`).
* Coordenadas GPS (`GeoCoordinates`).
* Telefone internacional (`+55...`).
* `sameAs`: Links para redes sociais, Google Maps e portais de agendamento.

### 4. Ações no Google Search Console (Passo a Passo Pós-Publicação):
1. **Validar Propriedade via DNS:** Conectar a Cloudflare ao Search Console para validação automática em 1 clique.
2. **Enviar Sitemap:** Submeter a URL completa `https://[dominiocliente.com.br]/sitemap.xml`.
3. **Inspeção de URL & Solicitação de Indexação:** Inspecionar a URL principal e clicar em **"SOLICITAR INDEXAÇÃO"**.
4. **Google Perfil de Empresa (Google Meu Negócio):**
   * Acessar a ficha do Google Maps do cliente e preencher o campo **Website** com o link oficial. Isso transmite autoridade instantânea para a busca local.

---

## 5. Segurança e Blindagem (Cloudflare WAF, Headers e Senhas)

### 1. Cloudflare Edge Security:
* **Always Use HTTPS:** Habilitado em SSL/TLS.
* **Minimum TLS Version:** TLS 1.2 ou 1.3.
* **Automatic HTTPS Rewrites:** Ativo.
* **Bot Fight Mode:** Ativo para bloquear scrapers maliciosos e automações abusivas.

### 2. Security Headers (HTTP Response):
Configurar no Cloudflare Transform Rules / Workers:
```http
X-Frame-Options: SAMEORIGIN
X-Content-Type-Options: nosniff
Referrer-Policy: strict-origin-when-cross-origin
Permissions-Policy: camera=(), microphone=(), geolocation=(self)
```

### 3. Proteção de Credenciais e Código:
* **Zero Segredos no Git:** Chaves de API, credenciais e senhas NUNCA devem ser salvas no repositório.
* **Uso de `.gitignore` Padrão:** Ignorar `.env`, `*.log`, pastas de staging, backups e caches locais.

---

## 6. Checklist Final de Pré-Lançamento e Performance

| Etapa | Item Verificado | Status |
|:---|:---|:---:|
| **Design** | Responsividade testada em 320px, 375px, 768px e 1440px | [ ] |
| **Rodapé** | 3 Colunas niveladas, links ativos e slogan centralizado no mobile | [ ] |
| **DNA** | 4 Camadas da JKL Solutions inseridas e validadas no código-fonte | [ ] |
| **Links** | WhatsApp, AppBarber, Redes Sociais e Rota GPS abrindo em nova aba (`target="_blank"`) | [ ] |
| **SEO** | Meta tags, OpenGraph, Twitter Cards, Schema.org e Canonical validados | [ ] |
| **Sitemap** | `robots.txt` e `sitemap.xml` acessíveis com status HTTP 200 | [ ] |
| **Performance** | Imagens compactadas em WebP / otimizadas com cache Cloudflare Edge (HIT) | [ ] |
| **Analytics** | GA4 (Google Analytics) com eventos de clique configurados | [ ] |
| **Staging** | Subdomínio de teste desvinculado e excluído da Cloudflare | [ ] |
| **GSC** | Propriedade verificada e indexação prioritária solicitada no Search Console | [ ] |
| **Google Maps** | Ficha do Google Meu Negócio atualizada com o site oficial | [ ] |
